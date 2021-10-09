`timescale 1ns/1ps

module full_subtractor_rtl
( output reg cout,diff,
	input a,b,cin);
	
	
	always@*
	begin
	diff=a^b^cin;
	cout=(~a)&b|b&cin|cin&(~a);
	end
	
	
	endmodule
	