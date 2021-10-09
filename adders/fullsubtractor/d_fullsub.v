module d_fullsub(a,b,bin,bout,d);
    input a,b,bin;
    output bout,d;
    wire w,d1,b1,b2;
    assign d = (a^b)^bin;
    assign bout = ((~a)&bin)|((~a)&b)|(b&bin);
endmodule
