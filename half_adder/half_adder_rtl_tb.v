module half_adder_rtl_tb;

reg  a,b;
wire cout,sum;
integer i;


half_adder_rtl o (.a(a),.b(b),.cout(cout),.sum(sum));

initial
begin

$monitor("a=%b,b=%b,cout=%b,sum=%b",a,b,cout,sum);
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
