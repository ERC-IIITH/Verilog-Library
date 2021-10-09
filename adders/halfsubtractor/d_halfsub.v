module d_halfsub(a,b,d,bo);
    input a,b;
    output d,bo;
    assign d = a^b,bo=(~a)&b;
endmodule
