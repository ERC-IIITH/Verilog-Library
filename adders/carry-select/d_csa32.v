module d_csa32(a,b,cin,sum,cout);
    input [31:0] a,b;
    input cin;
    output [31:0] sum;
    output cout;
    genvar k;
    generate 
        for(k=0; k < 4; k=k+1)begin: l
            assign sum[k] = a[k]^b[k]^cin;
            assign c[k+1] =(a[k]^b[k])&cin | (a[0]&b[0]);
        end
    endgenerate
    genvar i;
    generate
        for(i=4; i <= 28; i=i+4)begin: loop
            input [3+i:0+i]a,b;
            input cin;
            output [3+i:0+i]sum;
            output cout;

            wire[3:0] s0,s1;
            wire carry0,carry1,cin_;
            not(cin_,cin);

            g_rca4 rca1( a,b,1'b0,s0,carry0);
            genvar j;
            generate
                for(j = i; j < i+4 ; j=j+1) begin: loop2

                end
            endgenerate
            g_rca4 rca2( a,b,1'b1,s1,carry1);

            g_mpxr m_s [3:0](s0,s1,cin_,sum);
            g_mpxr m_c(carry0,carry1,cin_,cout);
        end
    endgenerate
endmodule
