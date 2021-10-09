module halfsub_tb;
    reg a,b;
    wire ds,bs,gs;
    wire dc,bc,gc;

    g_halfsub g(
        .a(a),
        .b(b),
        .d(gs),
        .bo(gc)
    );
    b_halfsub B(
        .a(a),
        .b(b),
        .d(bs),
        .bo(bc)
    );
    d_halfsub d(
        .a(a),
        .b(b),
        .d(ds),
        .bo(dc)
    );

    initial
    begin
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


