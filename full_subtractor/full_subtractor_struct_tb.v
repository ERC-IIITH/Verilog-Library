

module full_subtractor_struct_tb;

reg a,b,cin;
wire cout,diff;
integer i;

full_subtractor_struct o (.a(a),.b(b),.cout(cout),.diff(diff),.cin(cin));


initial
begin

$monitor("a=%b,b=%b,cin=%b,cout=%b,diff=%b",a,b,cin,cout,diff);
end

initial
begin
for(i=0;i<=7;i=i+1)
begin
{a,b,cin}=i;
#10;
end

end

endmodule
