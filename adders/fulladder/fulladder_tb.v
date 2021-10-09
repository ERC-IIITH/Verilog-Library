module fulladder_tb;
    reg a,b,cin;
    wire ds,bs,gs;
    wire dc,bc,gc;

    g_fulladder g(
        .a(a),
        .b(b),
        .cin(cin),
        .sum(gs),
        .cout(gc)
    );
    b_fulladder B(
        .a(a),
        .b(b),
        .cin(cin),
        .sum(bs),
        .cout(bc)
    );
    d_fulladder d(
        .a(a),
        .b(b),
        .cin(cin),
        .sum(ds),
        .cout(dc)
    );

    initial
    begin
        cin =0;
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
        cin =1;
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

