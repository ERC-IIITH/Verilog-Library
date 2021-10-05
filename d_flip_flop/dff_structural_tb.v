module dff_structural_tb;
reg d , clk , reset;
wire q , qbar;

dff_structural dut(
    .q(q), .qbar(qbar), .clear(reset), .d(d), .clk(clk)
); 

initial begin
    clk = 0;
    forever #10 clk = ~clk;  
end 

initial begin 
    reset = 1; d <= 0;
    #100; reset = 0; d <= 1;
    #100; d <= 0;
    #100; d <= 1;
end 

endmodule