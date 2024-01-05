// Symmetric FIR filter coefficient with adder tree accumulator

module FIR_symmetric(
    input clk,
    input reset,
	input [31:0] incoming_signal_x, 
    output reg [31:0] output_signal_y);


    /* FIR Filter Parameters:
        order - number of FIR filter coefficients

    */
    parameter order = 53;
    parameter N = (order - 1) / 2;
    parameter STAGES_NUM = $clog2(order)-1;
    parameter ADDER_TREE_SIZE = 2 ** STAGES_NUM;
    parameter int FIRfilterCoeffs [order] = 
    '{-764, -965, -1236, -1588, -2004, -2443, -2832, -3071, -3041, -2608, -1637, 0, 2405, 5646, 9747, 14676, 20348, 26618, 33288, 40120, 46842, 53167, 58813, 63516, 67051, 69245, 69989, 69245, 67051, 63516, 58813, 53167, 46842, 40120, 33288, 26618, 20348, 14676, 9747, 5646, 2405, 0, -1637, -2608, -3041, -3071, -2832, -2443, -2004, -1588, -1236, -965, -764};
    
    logic [31:0] delayLine [order-1:0];
    logic [31:0] multiplyResult [ADDER_TREE_SIZE-1:0];
    
    int i, k;
    /* update delay line: 

    
    */
    always_ff @( posedge clk ) begin
        if (reset) begin
            for (i = 0; i < order; i++) begin
                delayLine[i] <= 0;
            end
        end
        else begin
            delayLine[0] <= incoming_signal_x;
            for (i = 1; i< order; i++) begin
               delayLine[i] <= delayLine[i-1]; 
            end
        end
    end


    /* Generate block
        in order to make this FIR filter highly generic, a generate block is used to instantiate 
        individual filter taps. Each tap is instantiated to connect to specifc indexes in the delay line
        these being the ones that are symmetric about the index (N-1)/2 where N is the order. 


    */

    genvar j;
    generate
        for (j = 0; j < N; j++) begin : generate_FIR_taps
            tap #(FIRfilterCoeffs[j]) U0 (delayLine[j], delayLine[order-j-1], multiplyResult[j]);
        end
    endgenerate

    // sum up by adding multipy results and adding to the value of bN * delayLine[N]
    assign multiplyResult[N] = delayLine[N] * FIRfilterCoeffs [N]; // obtain the value of the middle one
    
    // always_comb begin
    //     output_signal_y = 0;
    //     for (k = 0; k < N+1; k++) begin
    //         output_signal_y += multiplyResult[k];
    //     end
    // end


    // adder tree accumulate

    reg [31:0] layer0Acc [ADDER_TREE_SIZE/2-1:0];
    reg [31:0] layer1Acc [ADDER_TREE_SIZE/4-1:0];
    reg [31:0] layer2Acc [ADDER_TREE_SIZE/8-1:0];
    reg [31:0] layer3Acc [ADDER_TREE_SIZE/16-1:0];
    reg [31:0] layer4Acc [ADDER_TREE_SIZE/32-1:0];

    // must be zero padded first
    integer i0, i1, i2, i3, i4, i5;
    integer ii;
    
    always_comb begin
        // setting some values in multiply result to 1. This is done instead of zero padding the FIR filter coefficients to avoid synthesis of mult blocks
        for (ii = N+1; ii < ADDER_TREE_SIZE; ii ++) begin
            multiplyResult[ii] <= 0;
        end
        for (i0 = 0; i0 < ADDER_TREE_SIZE; i0=i0+2) begin 
            layer0Acc[i0/2] <= multiplyResult[i0]+multiplyResult[i0+1];
        end
        for (i1 = 0; i1 < ADDER_TREE_SIZE/2; i1=i1+2) begin
            layer1Acc[i1/2] <= layer0Acc[i1] + layer0Acc[i1+1];
        end
        for (i2 = 0; i2 < ADDER_TREE_SIZE/4; i2=i2+2) begin
            layer2Acc[i2/2] <= layer1Acc[i2] + layer1Acc[i2+1];
        end
        for (i3 = 0; i3 < ADDER_TREE_SIZE/8; i3=i3+2) begin
            layer3Acc[i3/2] <= layer2Acc[i3] + layer2Acc[i3+1];
        end
    end

    assign output_signal_y = layer3Acc[0] + layer3Acc[1];


endmodule

/*
    Each individual filter tap is comprised of an adder and a multiplier
*/
module tap (
    input [31:0] left_input,
    input [31:0] rigth_input,
    output [31:0] mult_output
);
    parameter coeff;
    assign mult_output = (left_input + rigth_input) * coeff;
endmodule