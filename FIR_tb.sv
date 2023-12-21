`timescale 100ps / 1ps
/*
    Test1:

    Filter coeff b0 is set to 1 and all others are set to 0. 
    The output signal should precisely match up with the input signal

*/

module tb_FIR_test1 ();

    reg clk, reset;
    reg [31:0] x;
    reg [31:0] noise;
    reg [31:0] signal;

    // FIR module declaration
    FIR_filter #(.order(2), .FIRfilterCoeffs({1, 0})) DUT
    (
        .clk(clk), 
        .reset(reset),
        .incoming_signal_x (x),
        .output_signal_y (y)
    );
    
    integer i;
    real    time_normalized, time_noise;
    real    period, period_noise;
    int     period_clkCycleNormalized;
    int     white_noise;
    real    pi = 3.14159265358979323;

    /*
        Generates a single sin wave 

        Simulation Parameters:
        amplitude  : controls the magnitude of the underlying sin function
        frequency  : given in Mhz. Ensure that it is listed as a decimal since the period is calculated as 1/f and using an integer results in zero instead of a real. 
        numPeriods :
        
        Noise characteristics

    */

    parameter frequency = 0.5; // 500 kHz signal
    parameter amplitude = 100;
    parameter numPeriods = 2;

    parameter noisefreq = 10.0; // 10MHz signal
    
    reg [7:0] counter = 0;

    initial begin
        @ (posedge clk) reset = 1; @ (posedge clk) reset = 0;
        x = 0; 
        white_noise = 0;

        period = 1/frequency * 1000;
        period_noise = 1/noisefreq * 1000;
        period_clkCycleNormalized = period;
        
        for (i = 0; i < period_clkCycleNormalized * numPeriods; i = i +1) begin
            time_normalized = 2 * pi / period_clkCycleNormalized * i;
            time_noise = 2 * pi / period_noise * i;
            
            @ (posedge clk) begin
                x <= amplitude*$sin(time_normalized);
                noise <= amplitude* $sin(time_noise);
                counter = counter + 1;

                // white noise generation with flipping the sign of the random number depending on the value of counter. 
                if (counter [3] == 1'b1) begin
                    white_noise <= $urandom_range(0, 120);
                    counter = 0;
                end

                if (counter [2] == 1'b1)
                    white_noise <= -white_noise;

                signal <= x + noise + white_noise;
            end
        end
        #10;
        $stop;
    end

    initial forever begin
        clk = 0; #5;
        clk = 1; #5;
    end

endmodule

