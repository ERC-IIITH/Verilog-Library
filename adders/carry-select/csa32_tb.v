module csa32_tb;
    reg[31:0] a,b,cin;
    wire[31:0] ds,bs,gs;
    wire dc,bc,gc;

    g_csa32 g(
        .a(a),
        .b(b),
        .cin(cin),
        .sum(gs),
        .cout(gc)
    );

    initial
    begin
        $monitor("[monitor] a=%d b=%d cin=%d",a,b,cin);
        $monitor("[monitor] ds=%d bs=%d gs=%d",ds,bs,gs);
        $monitor("[monitor] dc=%d bc=%d gc=%d",dc,bc,gc);
        cin =0;
        a = 80231;
        b = 4234950;
        #100;
        a = 100000000;
        b = 13;
        #100;
        a = 0;
        b = 0;
        #100;
        a = 130;
        b = 231;
        #100;
        cin =1;
        a = 80231;
        b = 4234950;
        #100;
        a = 100000000;
        b = 13;
        #100;
        a = 0;
        b = 0;
        #100;
        a = 130;
        b = 231;
        #100;
    end
endmodule
