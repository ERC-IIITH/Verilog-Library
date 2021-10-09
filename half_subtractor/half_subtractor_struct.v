

module half_subtractor_struct
( output cout,diff,
  input  a,b);
 

wire w;
 
xor x0(diff,a,b);
not n0(w,a);
and a0(cout,w,b);

endmodule
