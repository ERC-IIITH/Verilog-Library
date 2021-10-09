module b_addsub_mux(a,b,cin,sel,sum,cout);
    input a,b,cin,sel;
    output reg sum,cout;

    reg x1,o1,x2;
    reg w1,w2;

    always@(*)begin
        if(sel == 1) begin
            w1 = b;
        end else begin
            w1 = ~b;
        end

        x1 = a ^ w1; x2 = a & w1;
        sum = cin ^ x1; o1 = cin & x1;
        cout = o1 | x2;
    end
endmodule
