module addsum_mux_tb;
    reg a,b,sel,cin;
    wire ds,bs,gs;
    wire dc,bc,gc;
    g_addsub_mux i(
        .a(a),
        .b(b),
        .cin(cin),
        .sel(sel),
        .sum(gs),
        .cout(gc)
    );
    b_addsub_mux j(
        .a(a),
        .b(b),
        .cin(cin),
        .sel(sel),
        .sum(bs),
        .cout(bc)
    );
    d_addsub_mux (
        .a(a),
        .b(b),
        .cin(cin),
        .sel(sel),
        .sum(ds),
        .cout(dc)
    );
    initial
    begin
        sel = 1;
        cin =1;
        a = 0;
        b = 0;
        #100;
        a = 1;
        b = 0;
        #100;
        a = 1;
        b = 1;
        #100;
        a = 0;
        b = 1;
        #100;
        cin =0;
        a = 0;
        b = 0;
        #100;
        a = 1;
        b = 0;
        #100;
        a = 1;
        b = 1;
        #100;
        a = 0;
        b = 1;
        #200;
        sel = 1;
        cin =1;
        a = 0;
        b = 0;
        #100;
        a = 1;
        b = 0;
        #100;
        a = 1;
        b = 1;
        #100;
        a = 0;
        b = 1;
        #100;
        cin =0;
        a = 0;
        b = 0;
        #100;
        a = 1;
        b = 0;
        #100;
        a = 1;
        b = 1;
        #100;
        a = 0;
        b = 1;
        #100;
    end
endmodule 
