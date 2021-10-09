module d_rca32(input [31:0] a,b,input cin,output [31:0] sum,output cout );
    wire [31:0] c;
    wire [31:0]x1;
    wire [31:0]x2;
    wire [31:0]o;
    genvar i;

    assign x1[0] = a[0] ^ b[0], x2[0] = a[0] & b[0];
    assign sum[0] = cin ^ x1[0], o[0] = cin & x1[0];
    assign c[0]= o[0] | x2[0];
    
    generate 
        for ( i =1; i < 32 ; i=i+1) begin : loop
            assign x1[i] = a[i] ^ b[i], x2[i] = a[i] & b[i];
            assign sum[i] = c[i-1] ^ x1[i], o[i] = c[i-1]& x1[i];
            assign c[i]= o[i] | x2[i];
        end
    endgenerate
    assign cout = c[31];
endmodule
