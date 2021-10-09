module g_csa4(a,b,cin,sum,cout);
    input [3:0]a,b;
    input cin;
    output [3:0]sum;
    output cout;

    wire[3:0] s0,s1;
    wire carry0,carry1,cin_;
    not(cin_,cin);

    g_rca4 rca1( a,b,1'b0,s0,carry0);
    g_rca4 rca2( a,b,1'b1,s1,carry1);

    g_mpxr m_s [3:0](s0,s1,cin_,sum);
    g_mpxr m_c(carry0,carry1,cin_,cout);
endmodule
