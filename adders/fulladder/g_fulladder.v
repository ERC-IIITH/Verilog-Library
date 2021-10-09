module g_fulladder(input a,b,cin, output sum, cout);
    wire x1,x2,o1;
    g_halfadder a1(a,b,x1,x2);
    g_halfadder a2(cin,x1,sum,o1);
    or(cout,o1,x2);
endmodule
