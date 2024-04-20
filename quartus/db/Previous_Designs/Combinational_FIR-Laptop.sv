/*
	A combinational FIR filter.

*/

`define b0 32'b00111101010011001100110011001100 //  0.05
`define b1 32'b00111100001000111101011100001010 //  0.01
`define b2 32'b10111100111101011100001010001111 // -0.03
`define b3 32'b00111101000100110111010010111100 //  0.036

module FIR_filter (
	input [31:0] x);
	
	parameter ORDER = 4; 
	parameter NUM_SAMPLES = 256
	reg [15:0] Z1, Z2, Z3, Z4, Z5, Z6 // up to Z26...

	reg [31:0] x[NUM_SAMPLES]; // 32 bit wide register vector with 256 rows to store input signal x[n]
	reg [31:0] y[NUM_SAMPLES]; // 32 bit wide register vector with 256 rows to store output signal y[n]
	
	/*10 tap FIR low pass filter*/

	/* A signal is loaded into memory and a sliding window is created which starts at x[0] 
	   The entire signal is stored in a 2d array and an individual element is accessed via
	   x[n]. 
	   
		The output is a 2d array with called y[n] with each value of y[n] being computed in
		a multiply and accumulate step. 

		Below is an combinational circuit for this purpose 
	*/

	// compute first N outputs separately as they are computed differently than normal
	assign y[0] = `b0 * x[0];
	assign y[1] = `b0 * x[1] + `b1 * x[0];
	assign y[2] = `b0 * x[2] + `b1 * x[1] + `b2 * x[0];

	// repeat for up to N filters in which case then do:
	assign y[NUM_SAMPLES : ORDER-1] = 	`b0 * x[NUM_SAMPLES   : ORDER-1] + 
										`b1 * x[NUM_SAMPLES-1 : ORDER-2] + 
										`b2 * x[NUM_SAMPLES-2 : ORDER-3] +
										`b3 * x[NUM_SAMPLES-3 : ORDER-4];

	/*
		This implementation only works for samples that are extremely short and for
		extremely low frequency signals. 

		For any data sample: 
		NUM_SAMPLES = sample_freq * length_sample

		A 200kHz signal for 3 seconds results in a 600,000 unique samples requiring a 600kB memory element
		in hardware just to store it. 

		This may also potentially generate 600,000 adders, multipliers among other things. 
		The problem is worse for higher frequency signals and/or longer samples. It also does not work for 
		real time DSP.
	*/
    

endmodule