module register_nbit#(parameter n =8)(d,clk,clr,q);
    
    input [n-1:0]d;
    input clk,clr;
    output reg [n-1:0] q;

    always@( posedge clk ) begin
        if ( clr )
            q <= 0;
        else if (clk == 1)
            q <= d;
    end

endmodule
