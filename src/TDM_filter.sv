/* Purpose: Implementation of a synchronous TDM serializer
- 1 time slot for each channel that the FIR filter will process

Receives a single bit at a time:
*/

// Sampling and selection done via an FSM which rotate for each clock cycle
parameter num_channels = 4;
parameter DATA_WIDTH = 32;
parameter FILTER_ORDER   = 100

module TDM_FIR_directForm (
    input clk,                         // clk signal that controls when to sample and create time frames
    input reset, 
    input  [DATA_WIDTH-1:0] FIR_input,
    output [DATA_WIDTH-1:0] outputData
);
    reg outputData;
    reg [FILTER_ORDER-1:0] [DATA_WIDTH-1:0] filter_feeder_line;

    // Adaptation of the N+1 size FIFOs present in the versal engine multichannel FIR 
    // https://docs.amd.com/r/en-US/am004-versal-dsp-engine/Multichannel-FIR-Filter

    // A simple delay line involving a `N` length register-delay-line is used instead
    // Saves on registers but may suffer from CDC issues since filter will run on a different clk than sampler
    // !!! FIR_input may appear as an asynchrnous event so a N+1 FIFO implementation might need to be used 
    genvar i;
    bufferDelay delayLineEntry (.clk(clk), .reset(reset), .buff_In(FIR_input), .buff_Out(filter_feeder_line[0]));
    generate
        for (i = 1; i < FILTER_ORDER; i = i+1) begin : delayLine_generator
            bufferDelay delayLineElement (
                                        .clk(clk), 
                                        .reset(reset), 
                                        .buff_In(filter_feeder_line[i-1]), 
                                        .buff_Out(filter_feeder_line[i]));
        end
    endgenerate

    // Accumulate an multiply buffer outputs with FIR filter parameters
    wire [FILTER_ORDER-1:0] [DATA_WIDTH-1:0] multiplyResult;
    integer j, k;
    always_comb begin
        for (j = 0; j < FILTER_ORDER; j = j + 1) begin
            multiplyResult[j] = FIRfilterCoeffs[j] * filter_feeder_line[j];
        end
        for (k = 0; k < FILTER_ORDER; k = k + 1) begin
            if (k = 0)
                outputData = 0;
            else
                outputData += multiplyResult[k];
        end
    end

endmodule

module bufferDelay (
    input clk,
    input reset,
    input  [DATA_WIDTH-1:0] buff_In,
    output [DATA_WIDTH-1:0] buff_Out
)

    integer reg_count;
    logic [num_channels-1:0] [DATA_WIDTH-1:0] buffer;

    always_ff @( posedge clk ) begin : register_chain 
        if (reset) 
            for (reg_count = 0; reg_count < num_channels; num_channels = num_channels + 1) begin
                buffer[reg_count+1] <= 0
            end
        else begin
                buffer[0] <= buff_In;

            for (reg_count = 1; reg_count < num_channels; num_channels = num_channels + 1) begin
                buffer[reg_count] <= buffer[reg_count-1];
            end
        end
    end

    assign buff_Out = buffer[num_channels-1] // the output of the last buffer in the chain should be used as output

endmodule