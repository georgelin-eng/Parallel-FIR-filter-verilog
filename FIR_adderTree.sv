// `include "params.v"

module FIR_adderTree  (
    input clk, 
    input reset,
	input  signed [width-1:0] incoming_signal_x, 
    output  [width-1:0] output_signal_y);


    parameter STAGES_NUM = $clog2(order);
    parameter ADDER_TREE_SIZE = 2 ** STAGES_NUM;

    reg [width-1:0] delayLine       [order-1:0];
    reg [width-1:0] multiplyResult  [ADDER_TREE_SIZE-1:0];  // 2D array used to score multiply results
    reg [width-1:0] layer0Acc       [ADDER_TREE_SIZE/2-1:0];
    reg [width-1:0] layer1Acc       [ADDER_TREE_SIZE/4-1:0];
    reg [width-1:0] layer2Acc       [ADDER_TREE_SIZE/8-1:0];
    reg [width-1:0] layer3Acc       [ADDER_TREE_SIZE/16-1:0];
    reg [width-1:0] layer4Acc       [ADDER_TREE_SIZE/32-1:0];

    // must be zero padded first
    integer i, j;
    integer i0, i1, i2, i3, i4, i5;
    integer ii;


    // Reseting regisers 
    
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
    
    // Multiply stage 
    always_comb begin
        for (j = 0; j < order; j++) begin
            multiplyResult[j] <= FIRfilterCoeffs[j] * delayLine[j];
        end
        for (ii = order; ii < ADDER_TREE_SIZE; ii ++) begin
            multiplyResult[ii] <= 0;
        end
    end

    // Combination stage
    always_comb begin
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
        for (i4 = 0; i4 < ADDER_TREE_SIZE/16; i4=i4+2) begin
            layer4Acc[i4/2] <= layer3Acc[i4] + layer3Acc[i4+1];
        end
    end


    assign output_signal_y = layer4Acc[1] + layer4Acc[0];

endmodule