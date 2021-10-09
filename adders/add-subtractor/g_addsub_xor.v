module g_addsub_xor(a,b,cin,sel,sum,cout);
    input a,b,cin,sel;
    output sum,cout;

    wire w;
    xor(w,b,sel);
    g_fulladder fa(a,w,cin,sum,cout);
endmodule
