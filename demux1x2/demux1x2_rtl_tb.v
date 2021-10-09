module demux1x2_rtl_tb;

reg s,in;
wire out0,out1;
integer i;
demux1x2_rtl obj(.s(s),.in(in),.out0(out0),.out1(out1));

initial
$monitor("in=%b,s=%b,out0=%b,out1=%b",in,s,out0,out1);

initial
begin
for(i=0;i<=3;i=i+1)
begin
{s,in}=i;
#10;
end
end

endmodule
