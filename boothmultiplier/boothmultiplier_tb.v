//testbench
`include "boothMultiplier.v"

module booth_mul_tb();
    reg signed [3:0] a, b;
    wire signed[7:0] p;

    booth_mul bm(p,a,b);
    initial begin
        a = 2; b = 2; #5;
        a = 3; b = 2; #5;
        a = 3; b = 4; #5;
        a = 1; b = 4; #5;
        a = 0; b = 4; #5;
		a = 2; b = 4; #5;
		a = 3; b = 4; #5;
		a = 4; b = 4; #5;
		a = 5; b = 4; #5;
		a = 6; b = 4; #5;
    end
    initial begin
        $monitor("a =%d b =%d\t\tp =%d", a, b, p);
    end
endmodule