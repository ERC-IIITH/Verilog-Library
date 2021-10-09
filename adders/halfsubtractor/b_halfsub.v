module b_halfsub(a,b,d,bo);
    input a,b;
    output reg d,bo;
    always@(*)begin
        d = a^b;
        bo=(~a)&b;
    end
endmodule
