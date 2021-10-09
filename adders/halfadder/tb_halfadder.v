module halfadder_tb;
    reg a,b;
    wire ds,bs,gs;
    wire dc,bc,gc;

    g_halfadder g(
        .a(a),
        .b(b),
        .sum(gs),
        .cout(gc)
    );
    b_halfadder B(
        .a(a),
        .b(b),
        .sum(bs),
        .cout(bc)
    );
    d_halfadder d(
        .a(a),
        .b(b),
        .sum(ds),
        .cout(dc)
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
