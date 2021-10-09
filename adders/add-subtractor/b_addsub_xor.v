module b_addsub_xor(a,b,cin,sel,sum,cout);
    input a,b,cin,sel;
    output reg sum,cout;

    reg x1,o1,x2;
    reg w;
    always@(*)begin
        w = b^sel;
        
        x1 = a ^ w; x2 = a & w;
        sum = cin ^ x1; o1 = cin & x1;
        cout = o1 | x2;
    end
endmodule
