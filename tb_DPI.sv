module tb_dpi;

  import "DPI-C" function int add();
  int j;
  
  initial
  begin
    $display("Entering in SystemVerilog Initial Block");
    #20
    j = add();
    $display("Value of J = %d", j);
    $display("Exiting from SystemVerilog Initial Block");
    #5 $finish;
  end
endmodule