module g_rca32(input [31:0] a,b,input cin,output [31:0] sum,output cout );
    wire [31:0] w;
    g_fulladder fa0(a[0], b[0],cin,sum[0],w[0]);
    g_fulladder fa1(a[1], b[1],w[0],sum[1],w[1]);
    g_fulladder fa2(a[2], b[2],w[1],sum[2],w[2]);
    g_fulladder fa3(a[3], b[3],w[2],sum[3],w[3]);
    g_fulladder fa4(a[4], b[4],w[3],sum[4],w[4]);
    g_fulladder fa5(a[5], b[5],w[4],sum[5],w[5]);
    g_fulladder fa6(a[6], b[6],w[5],sum[6],w[6]);
    g_fulladder fa7(a[7], b[7],w[6],sum[7],w[7]);
    g_fulladder fa8(a[8], b[8],w[7],sum[8],w[8]);
    g_fulladder fa9(a[9], b[9],w[8],sum[9],w[9]);
    g_fulladder fa10(a[10], b[10],w[9],sum[10],w[10]);
    g_fulladder fa11(a[11], b[11],w[10],sum[11],w[11]);
    g_fulladder fa12(a[12], b[12],w[11],sum[12],w[12]);
    g_fulladder fa13(a[13], b[13],w[12],sum[13],w[13]);
    g_fulladder fa14(a[14], b[14],w[13],sum[14],w[14]);
    g_fulladder fa15(a[15], b[15],w[14],sum[15],w[15]);
    g_fulladder fa16(a[16], b[16],w[15],sum[16],w[16]);
    g_fulladder fa17(a[17], b[17],w[16],sum[17],w[17]);
    g_fulladder fa18(a[18], b[18],w[17],sum[18],w[18]);
    g_fulladder fa19(a[19], b[19],w[18],sum[19],w[19]);
    g_fulladder fa20(a[20], b[20],w[19],sum[20],w[20]);
    g_fulladder fa21(a[21], b[21],w[20],sum[21],w[21]);
    g_fulladder fa22(a[22], b[22],w[21],sum[22],w[22]);
    g_fulladder fa23(a[23], b[23],w[22],sum[23],w[23]);
    g_fulladder fa24(a[24], b[24],w[23],sum[24],w[24]);
    g_fulladder fa25(a[25], b[25],w[24],sum[25],w[25]);
    g_fulladder fa26(a[26], b[26],w[25],sum[26],w[26]);
    g_fulladder fa27(a[27], b[27],w[26],sum[27],w[27]);
    g_fulladder fa28(a[28], b[28],w[27],sum[28],w[28]);
    g_fulladder fa29(a[29], b[29],w[28],sum[29],w[29]);
    g_fulladder fa30(a[30], b[30],w[29],sum[30],w[30]);
    g_fulladder fa31(a[31], b[31],w[30],sum[31],cout);
endmodule
