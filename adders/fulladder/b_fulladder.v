module b_fulladder(input a,b,cin, output reg sum, cout);
    reg x1,o1,x2;
    always@(*) begin
         x1 = a ^ b; x2 = a & b;
         sum = cin ^ x1; o1 = cin & x1;
         cout = o1 | x2;
    end
endmodule
