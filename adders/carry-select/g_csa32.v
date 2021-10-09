module g_csa32(a,b,cin,sum,cout);
    input [31:0] a,b;
    input cin;
    output [31:0] sum;
    output cout;
    wire c[6:0];
    g_rca4 rca1(a[3:0],b[3:0],cin,sum[3:0],c[0]);

    g_csa4 csa1(a[7:4],b[7:4],c[0],sum[7:4],c[1]);
    g_csa4 csa2(a[11:8],b[11:8],c[1],sum[11:8],c[2]);
    g_csa4 csa3(a[15:12],b[15:12],c[2],sum[15:12],c[3]);
    g_csa4 csa4(a[19:16],b[19:16],c[3],sum[19:16],c[4]);
    g_csa4 csa5(a[23:20],b[23:20],c[4],sum[23:20],c[5]);
    g_csa4 csa6(a[27:24],b[27:24],c[5],sum[27:24],c[6]);
    g_csa4 csa7(a[31:28],b[31:28],c[6],sum[31:28],cout);

endmodule
