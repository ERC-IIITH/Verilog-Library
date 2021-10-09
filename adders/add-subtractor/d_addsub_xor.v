module d_addsub_xor(a,b,cin,sel,sum,cout);
    input a,b,cin,sel;
    output sum,cout;

    wire x1,x2,o1;
    wire w;
    assign w = b^sel;
    assign x1 = a ^ w, x2 = a & w;
    assign sum = cin ^ x1, o1 = cin & x1;
    assign cout = o1 | x2;
endmodule
