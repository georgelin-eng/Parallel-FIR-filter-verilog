module FIR_top(
    input clk,
    input [31:0] incoming,
    output [31:0] output_signal
);
    wire reset;

    reg[31:0] input_signal;
    reg[31:0] output_signalReg;

    FIR_symmetric filter (clk, reset, input_signal, output_signal);

    always_ff @ (posedge clk) begin
        input_signal <= incoming;
        output_signalReg <= output_signal;
    end
endmodule