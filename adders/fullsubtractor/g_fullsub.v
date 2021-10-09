module g_fullsub(a,b,bin,bout,d);
    input a,b,bin;
    output bout,d;
    wire w,d1,b1,b2;
    g_halfsub x(a,b,d1,b1);
    g_halfsub y(d1,bin,d,b2);

    or(bout,b1,b2);
endmodule
