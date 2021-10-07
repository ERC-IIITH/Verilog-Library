module or_struct_tb();

reg a,b;
wire o;

or_struct uut(.a(a), .b(b), .o(o));

initial begin

$dumpfile("or_struct.vcd");
$dumpvars(0,or_struct_tb);

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