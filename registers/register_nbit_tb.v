module register_nbit_tb;
    reg clk,clr;
    reg [7:0] d;
    wire [7:0 ]q;
    
    register_nbit#(8) r(d,clk,clr,q);
    always #5 clk = ~clk;
    initial begin
        clk =0;
        #10 clr = 0;
        @(posedge clk);
            d <= 0;
        @(posedge clk);
            d <= 1;
        @(posedge clk);
            d <= 0;
      
        #10 clr = 1;
        @(posedge clk);
            d <= 0;
        @(posedge clk);
            d <= 1;
        @(posedge clk);
            d <= 0;
    end
endmodule
