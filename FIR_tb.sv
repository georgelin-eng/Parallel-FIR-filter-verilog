/* Test Cases Used:
    - Basic test case for expected operation 
    - Edge case where noise is right on the stop band
    - Impulse response
    - 
*/

`include "params.v"

module tb_FIR ();
    //parameter width coming from params.v
    
    reg              clk, reset;
    reg  [width-1:0] noise;
    reg  [width-1:0] signal;
    wire [width-1:0] y_symmetric;
    wire [width-1:0] y_adderTree;
    wire [width-1:0] y_directForm;
    
    // FIR module declaration
    FIR_symmetric DUT1
    (
        .clk(clk), 
        .reset(reset),
        .incoming_signal_x (signal),
        .output_signal_y (y_symmetric)
    );

    FIR_adderTree DUT2
    (
        .clk(clk), 
        .reset(reset),
        .incoming_signal_x (signal),
        .output_signal_y (y_adderTree)
    );

    task automatic reset_delayLine (ref clk, output reg reset);
        #20;
        @ (posedge clk) reset = 1; @ (posedge clk) reset = 0;
    endtask





    integer file_test1, file_test2, file_test3; //file descriptor

    /* test_signal: tests basic operation of the FIR filter under expected conditions
        FIR filter processes noisy singnal data composed of 
        - 500   kHz base signal 
        - 10000 kHz noise 
        - 4000  kHz noise

        The FIR coefficients are generated at a sampling rate of 15000 kHz with a stop band of frequencies above 600 kHz

       test_impulse : tests filter response to an impulse function with amplitude of 10000
       test_step    : tests filter response to an step function with amplitude of 800
    */

    initial begin
        file_test1 = $fopen("test_signal.txt"  , "r");   
        file_test2 = $fopen("test_impulse.txt" , "r");  
        file_test3 = $fopen("test_step.txt"    , "r");   

        reset_delayLine (clk, reset);
        //read line by line.
        while (! $feof(file_test1 )) begin //read until an "end of file" is reached.
            $fscanf(file_test1 ,"%d\n",signal); //scan each line and get the value as an hexadecimal, use %b for binary and %d for decimal.
            @ (posedge clk);
        end 
        
        reset_delayLine (clk, reset);
        // //read line by line.
        while (! $feof(file_test2)) begin //read until an "end of file" is reached.
            $fscanf(file_test2,"%d\n",signal); //scan each line and get the value as an hexadecimal, use %b for binary and %d for decimal.
            @ (posedge clk);
        end 

        reset_delayLine (clk, reset);
        while (! $feof(file_test3)) begin //read until an "end of file" is reached.
            $fscanf(file_test3,"%d\n",signal); //scan each line and get the value as an hexadecimal, use %b for binary and %d for decimal.
            @ (posedge clk);
        end 


        //once reading and writing is finished, close the file.
        $fclose (file_test1);
        $fclose (file_test2);
        $fclose (file_test3);

        $stop;
    end

    initial begin
        // reset
        @ (posedge clk) reset = 1; @ (posedge clk) reset = 0;


    end

    initial forever begin
        clk = 0; #5;
        clk = 1; #5;
    end
endmodule



