module jk_ff_tb();

    reg j, k, clk;
    wire q, qc;

    jk_ff uut(.j(j), .k(k), .clk(clk), .q(q), .qc(qc));
    initial begin
        $dumpfile("jk_ff.vcd");
        $dumpvars(0, jk_ff_tb);
        //Initialise inputs
        j = 1'b0;   //Number of bits'Binary system or whatever system with whatever value(0 here)
        k = 1'b0;
        clk = 1'b0;
        #180 $finish;
    end

    always #5 clk=~clk;    //Different test cases, 00, 10, 01, 11
    always #20 j=~j;
    always #40 k=~k;

    always @(posedge clk)
        $monitor("time = %0t, j = %b, k = %b, q = %b, q' = %b", $time, j, k, q, qc);

endmodule