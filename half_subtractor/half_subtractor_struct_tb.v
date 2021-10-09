`timescale 1ns/1ps

module half_subtractor_struct_tb;

reg  a,b;
wire cout,diff;
integer i;


half_subtractor_struct o (.a(a),.b(b),.cout(cout),.diff(diff));

initial
begin

$monitor("a=%b,b=%b,cout=%b,diff=%b",a,b,cout,diff);
end

initial
begin
for(i=0;i<=3;i=i+1)
begin
{a,b}=i;
#10;
end

end

endmodule
