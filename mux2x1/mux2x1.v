`timescale 1ns / 1ps

//Truth table
// s  a0  a1  y
// 0  0   0   0
// 0  0   1   0
// 0  1   0   1
// 0  1   1   1
// 1  0   0   0
// 1  0   1   1
// 1  1   0   0
// 1  1   1   1
// y = (a0.s') + (a1.s)

module mux2x1(
  input s,
  input a0,
  input a1,
  output y
);

  not (sbar,s);
  and (y1,sbar,a0);
  and (y2,s,a1);
  or (y,y1,y2);

endmodule