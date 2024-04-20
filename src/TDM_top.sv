module TDM_top (
    input clk,
    input reset,
    input  [num_channels-1:0] [DATA_WIDTH-1:0] channelInputData,
    output [num_channels-1:0] [DATA_WIDTH-1:0] channelOutputData,
);
    // bus lines between modules

    wire [DATA_WIDTH-1:0] FIR_feed, FIR_output;
    
    TDM_controller CONTROLLER (clk, reset, channelInputData, mux_sel, demux_sel);
    TDM_serializer SERIALIZER (channelInputData, mux_sel, FIR_feed);
    TDM_FIR_directForm FILTER (clk, reset, FIR_feed, FIR_out_to_demux);
    TDM_deserializer DESERIALIZER (FIR_out_to_demux, demux_sel, channelOutputData);

endmodule