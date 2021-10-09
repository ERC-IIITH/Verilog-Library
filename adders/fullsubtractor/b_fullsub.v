module b_fullsub(a,b,bin,bout,d);
    input a,b,bin;
    output reg bout,d;
    reg w,d1,b1,b2;
    always@(*)begin
        d = (a^b)^bin;
        bout = ((~a)&bin)|((~a)&b)|(b&bin);
    end
endmodule
