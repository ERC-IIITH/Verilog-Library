module half_adder_rtl
( output reg cout,sum,
  input a,b
  );

always@*
begin  

cout=a&b;

sum=a^b;

end

endmodule
