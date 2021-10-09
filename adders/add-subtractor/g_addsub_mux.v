module g_addsub_mux(a,b,cin,sel,sum,cout);
    input a,b,cin,sel;
    output sum,cout;

    wire b_,w1,w2;
    not(b_,b);
    g_mpxr m(b,b_,sel,w1);
    g_fulladder fa(a,w1,cin,sum,cout);
endmodule
