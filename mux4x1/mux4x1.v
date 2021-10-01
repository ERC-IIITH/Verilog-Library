`timescale 1ns / 1ps

`include "../mux2x1/mux2x1.v"

module mux4x1(
  input s0,
  input s1,
  input a0,
  input a1,
  input a2,
  input a3,
  output y
);

	mux2x1 mux1 (
		.a0(a0),
		.a1(a1),
		.s(s0),
		.y(y1)
	);

  mux2x1 mux2 (
		.a0(a2),
		.a1(a3),
		.s(s0),
		.y(y2)
	);

  mux2x1 mux3 (
		.a0(y1), 
		.a1(y2), 
		.s(s1),
		.y(y)
	);

endmodule