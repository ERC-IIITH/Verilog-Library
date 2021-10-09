module g_rca4(a,b,cin,sum,cout);
    input[3:0]a,b;
    input cin;
    output[3:0]sum;
    output cout;

    wire c0,c1,c2;

    g_fulladder f1(a[0],b[0],cin,sum[0],c0);
    g_fulladder f2(a[1],b[1],c0,sum[1],c1);
    g_fulladder f3(a[2],b[2],c1,sum[2],c2);
    g_fulladder f4(a[3],b[3],c2,sum[3],cout);
endmodule
