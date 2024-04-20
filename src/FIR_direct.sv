`include "params.sv"

module FIR_filter_DirectForm (
    input clk, 
    input reset,
	input  signed [width-1:0] incoming_signal_x, 
    output reg  [width-1:0] output_signal_y);

    /* FIR filter parameters: 
        order - number of FIR filter coefficients

        scale - When passing the FIR filter coefficients to this module, ensure that they are integer values
                otherwise multiplication with negatives can create unintended behaviour. All FIR filter coefficients should be 
                scaled up by 2^k when passed to this module so set this value to k so that values are down by 2^k

                set to 0 because anything else is wrong right now. Find another way to fix offsets
    */
    
	reg [width-1:0] delayLine [order-1:0];      // 32 bit registers used as buffers to store incoming data for processing
    reg [width-1:0] multiplyResult [order-1:0]; // 32 bit wires used to carry the outputs of the multiply stage in order to feed into an adder chain

    /* update buffer stage with initialization logic: 
        initialize registers to zero to avoid undefined outputs in the accumulation stage
        reset occurs synchronously with the clk signal, otherwise retain the registers should
        hold onto their values when reset is not asserted. Will likely still generate a mux when synthesized. 
        non blocking assignment is used to avoid race conditions and ensure that the design is synthesized correctly. 

        If reset is not asserted, on the next clock signal, x0 receives the current input sample of the incoming signal
        while the next element of the buffer recieves the previous simulating the operation of the delay line. These are 
        the Z^-1 blocks often seen in FIR filter block diagrams. 

        For loops are used in order to create the delay line, multiplier, and accumulation stage. 
        This allows for the module to be easily paramaterized when instantiated. 
    */

    // need to use seperate integers for each of the for loops as they need to be driven by different combinataional blocks
    integer i, j, k;

    always_ff @( posedge clk ) begin : FIR_update_buffer_delay_line_with_zero_init
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

    /* Accumulate and multiply: 
        
        Implementes convolution that's present in the direct form FIR filter through multiplying the stored
        values in the regisers x0 to xN with the FIR filter coefficients b0 to bN. 

        This specific ordering, bN * xN, must be kept to match with the delay line sequence and it implemented
        combinationally so that updates are seen within the same clock cycle. 
    */
    
    always_comb begin : FIR_multiplier
        for (j = 0; j < order; j++) begin
            multiplyResult[j] <= FIRfilterCoeffs[j] * delayLine[j];
        end
    end

    always_comb begin
        output_signal_y = 0;
        for (k = 0; k < order; k++) begin
            output_signal_y += multiplyResult[k];
        end
    end

endmodule