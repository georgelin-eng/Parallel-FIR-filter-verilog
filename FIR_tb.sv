// `timescale 100ps / 1ps
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
    FIR_filter DUT
    (
        .clk(clk), 
        .reset(reset),
        .incoming_signal_x (signal),
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
    parameter noiseamplitude = 0.5;
    
    reg [7:0] counter = 0;
    integer outfile0; //file descriptor

    initial begin
        // reset
        @ (posedge clk) reset = 1; @ (posedge clk) reset = 0;

        outfile0=$fopen("test_signal.txt","r");   //"r" means reading and "w" means writing
        //read line by line.
        while (! $feof(outfile0)) begin //read until an "end of file" is reached.
            $fscanf(outfile0,"%d\n",signal); //scan each line and get the value as an hexadecimal, use %b for binary and %d for decimal.
            @ (posedge clk);
        end 

        //once reading and writing is finished, close the file.
        $fclose(outfile0);

        #10;
        $stop;
    end

    initial forever begin
        clk = 0; #5;
        clk = 1; #5;
    end

endmodule

