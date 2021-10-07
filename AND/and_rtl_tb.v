module and_rtl_tb();

reg a,b;
wire o;

and_rtl uut(.a(a), .b(b), .o(o));

initial begin

$dumpfile("and_rtl.vcd");
$dumpvars(0,and_rtl_tb);

 a = 1'b0;  //intializing the varibales, and it takes only one bit at a time
 b = 1'b0;
 #16 $finish; //it will make reset
end

always #5 a = ~a;
always #10 b = ~b;
initial begin
    $monitor("time = %0t,a =%b,b =%b,o =%b",$time,a,b,o);
end
endmodule