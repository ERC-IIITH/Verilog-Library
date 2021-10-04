module DFF_structural_tb;
reg D , CLK , reset;
wire Q , QBAR;

DFF_structural dut(
    .q(Q), .qbar(QBAR), .clear(reset), .d(D), .clk(CLK)
); 

initial begin
    clk = 0;
    forever #10 clk = ~clk;  
end 

initial begin 
    reset = 1; D <= 0;
    #100; reset = 0; D <= 1;
    #100; D <= 0;
    #100; D <= 1;
end 

endmodule