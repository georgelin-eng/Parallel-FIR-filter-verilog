`include "params.sv"

module FIR_top(
    input clk,
    input  [width-1:0] incoming,
    output [width-1:0] output_signal
);
    wire reset;

    reg[width-1:0] input_signal;
    reg[width-1:0] output_signalReg;

    FIR_symmetric filter (clk, reset, input_signal, output_signal);

    always_ff @ (posedge clk) begin
        input_signal <= incoming;
        output_signalReg <= output_signal;
    end
endmodule