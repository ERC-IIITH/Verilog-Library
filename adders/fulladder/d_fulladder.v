module d_fulladder(input a,b,cin, output sum, cout);
    wire x1,x2,o1;
    assign x1 = a ^ b, x2 = a & b;
    assign sum = cin ^ x1, o1 = cin & x1;
    assign cout = o1 | x2;
endmodule
