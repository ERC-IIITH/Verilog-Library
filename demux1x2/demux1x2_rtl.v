`timescale 1ns/1ps

module demux1x2_rtl
( output reg out0,out1,
  input  s,in);
  
  always@(s,in)
  begin
  out0=~((~(in&(~(s&s))))&(~(in&(~(s&s)))));
  out1=~((~(in&s))&(~(in&s)));
  end
  
  endmodule
