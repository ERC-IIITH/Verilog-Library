module g_cla16(a,b,cin,sum,cout);
    input [15:0]a,b;
    input cin;
    output [15:0] sum;
    output cout;

    wire [3:0]c;
    
    g_cla4 cla0(a[3:0], b[3:0], cin, sum[3:0],c[1]);
    g_cla4 cla1(a[7:4],b[7:4],c[1],sum[7:4],c[2]);
    g_cla4 cla2(a[11:8],b[11:8],c[2],sum[11:8],c[3]);
    g_cla4 cla3(a[15:12],b[15:12],c[3],sum[15:12],cout);
    
endmodule 
