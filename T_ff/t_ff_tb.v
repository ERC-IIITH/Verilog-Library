`include "t_ff.v"
module t_ff_tb();
  reg clk = 1'b0, t, reset;
  wire q, qbar;
  integer i;
  
  t_ff dut (clk, t, reset, q, qbar);
  
  always #5 clk = ~clk;
  
  initial begin
    for (i=1;i<=3;i=1+1) begin
      reset = 1'b1;
      #15 t = 1'b0;
      #15 reset = 1'b0;
      #15 t = 1'b1;
      #15;
    end
  end
  
  initial begin
    $monitor("Reset = %0b, T = %0b , Q = %0b and Qbar = %0b", reset, t, q, qbar);
    $dumpfile("test.vcd");
    $dumpvars(0,tb);
    #150 $finish;
  end
endmodule
