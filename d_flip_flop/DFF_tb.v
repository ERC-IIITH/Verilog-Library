module DFF_tb;
    reg d , clk , reset;
    wire q;
    DFF_tb DUT(
        .d(d) , .q(q) , .clk(clk) , .reset(reset)
    );
    initial #400 $finish;
    initial
        begin
            clk = 1'b0;
            forever #5 clk = ~clk;
        end
    initial 
        begin clk = 1'b0;
            forever #5 clk = ~clk;
        end
    initial 
        begin  
            reset = 1'b1;
            d = 1'b0;
            #5 reset = 1'b0;
            #50 reset = 1'b1;
            #43 reset = 1'b0;
            #100 reset = 1'b1;
            #20 d = 1'b1;
        end
endmodule 