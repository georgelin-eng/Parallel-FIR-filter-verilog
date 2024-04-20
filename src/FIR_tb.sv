/* Test Cases:    
    test_signal  : tests basic operation of the FIR filter under expected conditions. 
    Signal contains the following:
        - 500   kHz base signal 
        - 10000 kHz noise 
        - 4000  kHz noise


    test_impulse : tests filter response to an impulse function with amplitude of 10000
    test_step    : tests filter response to an step function with amplitude of 800
*/

`include "params.sv"

module tb_FIR ();
    
    reg                     clk, reset;
    reg         [width-1:0] signal;
    wire signed [width-1:0] y_symmetric;
    wire signed [width-1:0] y_adderTree;
    wire signed [width-1:0] y_directForm;
    
    // FIR module declaration
    FIR_symmetric DUT1
    (
        .clk(clk), 
        .reset(reset),
        .incoming_signal_x (signal),
        .output_signal_y   (y_symmetric)
    );

    FIR_adderTree DUT2
    (
        .clk(clk), 
        .reset(reset),
        .incoming_signal_x (signal),
        .output_signal_y   (y_adderTree)
    );

    FIR_filter_DirectForm Golden_Model
    (
        .clk(clk), 
        .reset(reset),
        .incoming_signal_x (signal),
        .output_signal_y   (y_directForm)
    );

    task automatic reset_delayLine (ref clk, output reg reset);
        @ (posedge clk) reset = 1; 
        @ (posedge clk) reset = 0;
    endtask

    integer file_handle, log_file_handle;
    task automatic run_test 
    (
        integer file_handle, 
        integer log_file_handle, 
        string  file_name, 
        string  log_file_name,
        ref     [width-1:0] signal);

        file_handle     = $fopen(file_name,     "r");  
        log_file_handle = $fopen(log_file_name, "w");  


        while (! $feof(file_handle )) begin 
            $fscanf(file_handle ,"%d\n",signal); 
            @ (posedge clk);            
            
            $fwrite(log_file_handle, "[%0t] Ref: %d, Adder Tree: %d, Symmetric: %d\n", $time, y_directForm, y_adderTree, y_symmetric);
            $display(                "[%0t] Ref: %d, Adder Tree: %d, Symmetric: %d\n", $time, y_directForm, y_adderTree, y_symmetric);

            // Stop simulation if any model does not match the reference "golden model" of the direct form implementation
            if (y_adderTree != y_directForm) begin 
                $display ("Check Adder Tree Implementation");  
                $stop; 
            end
            if (y_symmetric != y_directForm) begin 
                $display ("Check Symmetric Implementation");  
                $stop; 
            end
        end 

        $fclose (file_handle);
        $display ("Passed: ", file_name);
    endtask

    initial begin
        reset_delayLine(clk, reset);
        run_test (file_handle, log_file_handle, "test_signal.txt",  "log_file.txt", signal);

        reset_delayLine(clk, reset);
        run_test (file_handle, log_file_handle, "test_impulse.txt", "log_file.txt", signal);

        reset_delayLine(clk, reset);
        run_test (file_handle, log_file_handle, "test_step.txt"  , "log_file.txt", signal);

        $display("** Passed All Tests ** ");
        $stop;
    end

    initial forever begin
        clk = 0; #5;
        clk = 1; #5;
    end

endmodule