module b_rca32(input [31:0] a,b,input cin,output reg[31:0] sum,output reg cout );
    reg [31:0] c;
    reg [31:0]x1;
    reg [31:0]x2;
    reg [31:0]o;
    integer i;
    always@(*)begin:outer
         x1[0] = a[0] ^ b[0]; x2[0] = a[0] & b[0];
         sum[0] = cin ^ x1[0]; o[0] = cin & x1[0];
         c[0]= o[0] | x2[0];
        
        for ( i =1; i < 32 ; i=i+1) begin : loop
             x1[i] = a[i] ^ b[i]; x2[i] = a[i] & b[i];
             sum[i] = c[i-1] ^ x1[i]; o[i] = c[i-1]& x1[i];
             c[i]= o[i] | x2[i];
        end
        cout = c[31];
    end
endmodule
