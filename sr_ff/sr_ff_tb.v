`include "sr_ff.v"

module sr_ff_tb();

reg clk, s, r;
wire q, qbar;

sr_ff uut(
    .clk(clk),
    .s(s),
    .r(r),
    .q(q),
    .qbar(qbar)
);

initial begin
        $dumpfile("sr_ff.vcd");
        $dumpvars(0, sr_ff_tb);
        
        s = 1'b0;   
        r = 1'b0;
        clk = 1'b0;

        #40 s = 1;
        #80 s = 0;
        #120 r = 1;
        #160 r = 0;

        #200 $finish;
end

always #10 clk = ~clk;


always @(posedge clk)
        $monitor("time = %0t, s = %b, r = %b, q = %b, q' = %b", $time, s, r, q, qbar);

endmodule