module d_halfadder(a,b,sum,cout);
    input a,b;
    output sum,cout;
    assign sum = a ^ b, cout = a & b;
endmodule
