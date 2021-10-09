module fullsub_tb;
    reg a,b,bin;
    wire ds,bs,gs;
    wire dc,bc,gc;

    g_fullsub g(
        .a(a),
        .b(b),
        .bin(bin),
        .bout(gc),
        .d(gs)
    );
    d_fullsub d(
        .a(a),
        .b(b),
        .bin(bin),
        .bout(dc),
        .d(ds)
    );
    b_fullsub B(
        .a(a),
        .b(b),
        .bin(bin),
        .bout(bc),
        .d(bs)
    );

    initial
    begin
        bin =0;
        a = 1;
        b = 0;
        #100;
        a = 1;
        b = 1;
        #100;
        a = 0;
        b = 0;
        #100;
        a = 0;
        b = 1;
        #100;
        bin =1;
        a = 1;
        b = 0;
        #100;
        a = 1;
        b = 1;
        #100;
        a = 0;
        b = 0;
        #100;
        a = 0;
        b = 1;
        #100;
    end
endmodule

