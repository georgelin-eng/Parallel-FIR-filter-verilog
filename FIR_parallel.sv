module FIR_adderTree  (
    input clk, 
    input reset,
	input [31:0] incoming_signal_x, 
    output [31:0] output_signal_y);
    
    parameter order = 64;
    int FIRfilterCoeffs [order] = 
    '{-764, -965, -1236, -1588, -2004, -2443, -2832, -3071, -3041, -2608, -1637, 0, 2405, 5646, 9747, 14676, 20348, 26618, 33288, 40120, 46842, 53167, 58813, 63516, 67051, 69245, 69989, 69245, 67051, 63516, 58813, 53167, 46842, 40120, 33288, 26618, 20348, 14676, 9747, 5646, 2405, 0, -1637, -2608, -3041, -3071, -2832, -2443, -2004, -1588, -1236, -965, -764, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};

    reg [31:0] delayLine [order-1:0];
    reg [31:0] multiplyResult [order-1:0];  // 2D array used to score multiply results
    reg [31:0] layer0Acc [order/2-1:0];
    reg [31:0] layer1Acc [order/4-1:0];
    reg [31:0] layer2Acc [order/8-1:0];
    reg [31:0] layer3Acc [order/16-1:0];
    reg [31:0] layer4Acc [order/32-1:0];

    // must be zero padded first
    
    integer i, j;
    integer i0, i1, i2, i3, i4, i5;


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
    end

    // Combination stage
    
    always_comb begin
        for (i0 = 0; i0 < order; i0=i0+2) begin 
            layer0Acc[i0/2] <= multiplyResult[i0]+multiplyResult[i0+1];
        end
        for (i1 = 0; i1 < order/2; i1=i1+2) begin
            layer1Acc[i1/2] <= layer0Acc[i1] + layer0Acc[i1+1];
        end
        for (i2 = 0; i2 < order/4; i2=i2+2) begin
            layer2Acc[i2/2] <= layer1Acc[i2] + layer1Acc[i2+1];
        end
        for (i3 = 0; i3 < order/8; i3=i3+2) begin
            layer3Acc[i3/2] <= layer2Acc[i3] + layer2Acc[i3+1];
        end
        for (i4 = 0; i4 < order/16; i4=i4+2) begin
            layer4Acc[i4/2] <= layer3Acc[i4] + layer3Acc[i4+1];
        end
    end

    assign output_signal_y = layer4Acc[1] + layer4Acc[0];

endmodule