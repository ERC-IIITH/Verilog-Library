module and_rtl(a,b,o);

input a,b;
output reg o;

always @(a,b) 
begin
o = a*b;    
end
endmodule