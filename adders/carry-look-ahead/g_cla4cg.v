module g_cla4cg(a,b,cin,cout);
    input[3:0] a,b;
    input cin;
    output[3:0] cout;

    wire [3:0]g,p,c;

    and(g[0],a[0],b[0]);
    and(g[1],a[1],b[1]);
    and(g[2],a[2],b[2]);
    and(g[3],a[3],b[3]);

    xor(p[0],a[0],b[0]);
    xor(p[1],a[1],b[1]);
    xor(p[2],a[2],b[2]);
    xor(p[3],a[3],b[3]);

    wire w0,w1,w2,w3;
    and(w0,p[0],cin);
    or(cout[0],g[0],w0);
    and(w1,p[1],cout[0]);
    or(cout[1],g[1],w1);
    and(w2,p[2],cout[1]);
    or(cout[2],g[2],w2);
    and(w3,p[3],cout[2]);
    or(cout[3],g[3],w3);
    
endmodule
