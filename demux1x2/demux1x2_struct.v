

module demux1x2_struct(out0,out1,s,in);

output out0,out1;
input s,in;

wire w1,w2,w3;

nand n5(w1,s,s);

nand n1(w2,in,w1);

nand n2(out0,w2,w2);

nand n3(w3,s,in);

nand n4(out1,w3,w3);

endmodule
