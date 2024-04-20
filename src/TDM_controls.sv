module TDM_controller (
    input clk,
    input reset,
    output mux_sel,
    output demux_sel
)
    reg [num_channels-1:0] mux_sel;
    reg [num_channels-1:0] demux_sel;

    // demux value is calculated separately and reset when overflowing
    // separately from `mux_sel` to account for the time it takes for
    // the signal to initially propogate through the delay line
    // this ensures the output channel is mapped correctly to its origin
    always_ff @(posedge clk) begin
        if (reset) begin
           mux_sel <= 0; 
           demux_sel <= num_channels-1; 
        end
        else begin
            if (mux_sel == num_channels)  
                mux_sel <= 0;
            else 
                mux_sel <= mux_sel + 1;
            if (demux_sel == num_channels) 
                demux_sel <= 0;
            else 
                demux_sel <= demux_sel + 1;
        end
    end


endmodule

module TDM_serializer (
    input  [num_channels-1:0] [DATA_WIDTH-1:0] channelInputData,
    input mux_sel
    output [DATA_WIDTH-1:0] MUX_out
);
    
    // Mux select is done by incrementing which channel is being
    // selected each clk cycle
    assign MUX_out = channelInputData[mux_sel];
    

endmodule

module TDM_deserializer (
    input [DATA_WIDTH-1:0] TDM_demux_input;
    input demux_sel,
    output [num_channels-1:0] [DATA_WIDTH-1:0] channelOutputData
)
    assign channelOutputData[demux_sel] = TDM_demux_input;
endmodule