`timescale 1ns/1ps

module half_subtractor_rtl
( output reg cout,diff,
  input  a,b);
  
	always@*
	begin
   diff=a^b;
	cout=(~a)&b;
	end
  
  endmodule