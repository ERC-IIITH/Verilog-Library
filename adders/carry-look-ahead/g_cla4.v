module g_cla4(a,b,cin,sum,cout);
    input [3:0] a,b;
    input cin;
    output [3:0] sum;
    output cout;

    wire [3:0]c;
    g_cla4cg x(a,b,cin,c[3:0]);

    g_cla4sum a0(a[0],b[0],cin,sum[0]) ;
    g_cla4sum a1(a[1],b[1],c[0],sum[1]) ;
    g_cla4sum a2(a[2],b[2],c[1],sum[2]) ;
    g_cla4sum a3(a[3],b[3],c[2],sum[3]) ;

    and(cout, c[3], c[3]);
endmodule 
