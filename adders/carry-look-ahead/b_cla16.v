module b_cla16(a,b,cin,sum,cout);
    input [15:0] a,b;
    input cin;
    output reg [15:0] sum;
    output reg cout;
    reg c[16:0];
    reg [15:0]p,g;
    integer i;
    always@(*)begin
        p[0]=(a[0]^b[0]);
        p[1]=(a[1]^b[1]);
        p[2]=(a[2]^b[2]);
        p[3]=(a[3]^b[3]);

        g[0]=(a[0]&b[0]);
        g[1]=(a[1]&b[1]);
        g[2]=(a[2]&b[2]);
        g[3]=(a[3]&b[3]);

        c[0]=cin;
        c[1]=g[0]|(p[0]&cin);
        c[2]=g[1]|(p[1]&g[0])|(p[1]&p[0]&cin);
        c[3]=g[2]|(p[2]&g[1])|(p[2]&p[1]&g[0])|(p[1]&p[1]&p[0]&cin);
        c[4]=g[3]|(p[3]&g[2])|(p[3]&p[2]&g[1])|(p[3]&p[2]&p[1]&g[0])|(p[3]&p[2]&p[1]&p[0]&cin);

        sum[0]=p[0]^c[0];
        sum[1]=p[1]^c[1];
        sum[2]=p[2]^c[2];
        sum[3]=p[3]^c[3];

        for( i = 4; i <= 12; i =i+4) begin : loop
            p[0+i]=(a[0+i]^b[0+i]);
            p[1+i]=(a[1+i]^b[1+i]);
            p[2+i]=(a[2+i]^b[2+i]);
            p[3+i]=(a[3+i]^b[3+i]);

            g[0+i]=(a[0+i]&b[0+i]);
            g[1+i]=(a[1+i]&b[1+i]);
            g[2+i]=(a[2+i]&b[2+i]);
            g[3+i]=(a[3+i]&b[3+i]);

            c[1+i]=g[0+i]|(p[0+i]&c[i]);
            c[2+i]=g[1+i]|(p[1+i]&g[0+i])|(p[1+i]&p[0+i]&c[i]);
            c[3+i]=g[2+i]|(p[2+i]&g[1+i])|(p[2+i]&p[1+i]&g[0+i])|(p[1+i]&p[1+i]&p[0+i]&c[i]);
            c[4+i]=g[3+i]|(p[3+i]&g[2+i])|(p[3+i]&p[2+i]&g[1+i])|(p[3+i]&p[2+i]&p[1+i]&g[0+i])|(p[3+i]&p[2+i]&p[1+i]&p[0+i]&c[i]);

            sum[0+i]=p[0+i]^c[0+i];
            sum[1+i]=p[1+i]^c[1+i];
            sum[2+i]=p[2+i]^c[2+i];
            sum[3+i]=p[3+i]^c[3+i];

        end
        cout = c[16];

    end
endmodule 
