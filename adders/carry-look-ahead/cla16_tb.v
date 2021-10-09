module cla16_tb;
    reg[15:0] a,b,cin;
    wire[15:0] ds,bs,gs;
    wire dc,bc,gc;

    g_cla16 g(
        .a(a),
        .b(b),
        .cin(cin),
        .sum(gs),
        .cout(gc)
    );
    b_cla16 B(
        .a(a),
        .b(b),
        .cin(cin),
        .sum(bs),
        .cout(bc)
    );
    d_cla16 d(
        .a(a),
        .b(b),
        .cin(cin),
        .sum(ds),
        .cout(dc)
    );

    initial
    begin
        $monitor("[monitor] a=%d b=%d cin=%d",a,b,cin);
        $monitor("[monitor] ds=%d bs=%d gs=%d",ds,bs,gs);
        $monitor("[monitor] dc=%d bc=%d gc=%d",dc,bc,gc);
        cin =0;
        a = 5000;
        b = 990;
        #100;
        a = 13332;
        b = 1301;
        #100;
        a = 0;
        b = 0;
        #100;
        a = 32700;
        b = 67;
        #100;
        cin =1;
        a = 5000;
        b = 990;
        #100;
        a = 13332;
        b = 1301;
        #100;
        a = 0;
        b = 0;
        #100;
        a = 32700;
        b = 67;
        #100;
    end
endmodule
