`include "../half_subtractor/half_subtractor_struct.v"

module full_subtractor_struct
( output cout,diff,
	input a,b,cin);
	
	wire w1,w2,w3;
	
	half_subtractor_struct h1 (.a(a),.b(b),.diff(w1),.cout(w2));
	half_subtractor_struct h2 (.a(w1),.b(cin),.diff(diff),.cout(w3));
	or o1(cout,w3,w2);
	
	endmodule
