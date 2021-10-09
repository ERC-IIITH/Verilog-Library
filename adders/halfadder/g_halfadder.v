module g_halfadder(input a,b, output sum,cout);
    xor(sum, a,b);
    and(cout, a,b);
endmodule
