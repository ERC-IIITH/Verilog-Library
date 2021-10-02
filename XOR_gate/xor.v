module XOR(a, b, o, d);

    input a, b;
    output reg o, d;

    always @(a, b)
    begin
        d = 0;
        o = a^b;
        d = 1;
    end
endmodule