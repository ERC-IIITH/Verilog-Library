`timescale 1ns / 1ps

`include "mux2x1.v"

module mux2x1_test;

	reg a0;
	reg a1;
	reg s;
	wire y;

	mux2x1 uut (
		.a0(a0), 
		.a1(a1), 
		.s(s), 
		.y(y)
	);

	initial begin
		$dumpfile("mux2x1_test.vcd");
    $dumpvars(0,mux2x1_test);
		a0 = 1'b0;
		a1 = 1'b0;
		s = 1'b0;

		#100 $finish;
  end

	always #5 a1=~a1;
	always #10 a0=~a0;
  always #20 s=~s;

	initial
    $monitor("time=%0t s=%d a0=%d a1=%d output=%d",$time,s,a0,a1,y);
      
endmodule