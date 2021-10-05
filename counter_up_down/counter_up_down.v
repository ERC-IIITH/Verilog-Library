//N-bit parameterized up-down counter with synchronous reset
//The counter counts up when the input up_down is at logic level '1' and counts down otherwise
module counter_up_down #(parameter WIDTH = 16)
  (input clk, reset, up_down,
   output reg [WIDTH-1:0] count);
  always @(posedge clk)
    begin
      if(reset)
        count <= 0;
      else if(up_down)
        count <= count + 1;
      else
        count <= count - 1;
    end
endmodule 