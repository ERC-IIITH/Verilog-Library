`include "counter_up_down.v"
module counter_up_down_tb #(parameter WIDTH = 2)();
  reg clk = 0, reset, up_down;
  wire [WIDTH-1:0] count;
  
  counter_up_down #(WIDTH) uut (clk, reset, up_down, count);
  
  always #5 clk = ~clk;
  initial begin
    reset = 1'b1;
    up_down = 1'b1;
    #10 up_down = 1'b0;
    #10 reset = 1'b0;
    #150 up_down = 1'b1;
    #150 reset = 1'b1;
    #20 up_down = 1'b0;
  end
  initial begin
    $monitor("Reset = %b, Up_down = %b, Count = %d", reset, up_down, count);
    $dumpfile("test.vcd");
    $dumpvars(0,counter_up_down_tb);
    #350 $finish;
  end
endmodule