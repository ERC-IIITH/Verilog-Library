module g_cla4sum(a,b,cin,res);
    input a,b,cin;
    output res;

    wire x;
    xor(x,a,b);
    xor(res,x,cin);
endmodule
