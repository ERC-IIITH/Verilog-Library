`include "d_ff.v"

module d_ff_tb();

reg clk, d;
wire q, qbar;

d_ff uut(
    .clk(clk),
    .d(d),
    .q(q),
    .qbar(qbar)
);

initial begin
        $dumpfile("d_ff.vcd");
        $dumpvars(0, d_ff_tb);
           
        d = 1'b0;
        clk = 1'b0;

        #40 $finish;
end

always #5 clk = ~clk;

always #10 d = ~d;

always @(posedge clk)
        $monitor("time = %0t, d = %b, q = %b, q' = %b", $time, d, q, qbar);

endmodule