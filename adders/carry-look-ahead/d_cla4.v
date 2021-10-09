module d_cla4(a,b,cin,sum,cout);
    input[3:0] a,b;
    input cin;
    output [3:0] sum;
    output cout;
    wire [3:0] p, g;

    assign  p[0]=(a[0]^b[0]),
            p[1]=(a[1]^b[1]),
            p[2]=(a[2]^b[2]),
            p[3]=(a[3]^b[3]);

    assign  g[0]=(a[0]&b[0]),
            g[1]=(a[1]&b[1]),
            g[2]=(a[2]&b[2]),
            g[3]=(a[3]&b[3]);

    assign  c0=cin,
            c1=g[0]|(p[0]&cin),
            c2=g[1]|(p[1]&g[0])|(p[1]&p[0]&cin),
            c3=g[2]|(p[2]&g[1])|(p[2]&p[1]&g[0])|(p[1]&p[1]&p[0]&cin),
            c4=g[3]|(p[3]&g[2])|(p[3]&p[2]&g[1])|(p[3]&p[2]&p[1]&g[0])|(p[3]&p[2]&p[1]&p[0]&cin);

    assign  sum[0]=p[0]^c0,
            sum[1]=p[1]^c1,
            sum[2]=p[2]^c2,
            sum[3]=p[3]^c3;

    assign cout=c4;
endmodule 
