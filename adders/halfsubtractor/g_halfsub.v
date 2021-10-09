module g_halfsub(a,b,d,bo);
    input a,b;
    output d,bo;
    wire w;
    xor(d,a,b);
    not(w,a) ;
    and(bo,w,b);
endmodule
