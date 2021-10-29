`include "seg7.v"

module seg7_tb();

reg [3:0] bcd;
wire [6:0] seg;

seg7 uut(
    .bcd(bcd),
    .seg(seg)
);

initial begin
    $dumpfile("seg7_tb.vcd");
    $dumpvars(0, seg7_tb);

    bcd = 4'b0;

    #200 $finish;
end

always #20 bcd = bcd + 1;

always @(bcd) begin
    #5;
    $display("%b",seg);
    $write(" ");

    if (seg[6]) begin   //a
        $write("_");
    end
    else begin
        $write(" ");
    end

    $write("\n");

    if (seg[1]) begin   //f
        $write("|");
    end
    else begin
        $write(" ");
    end

    if (seg[0]) begin   //g
        $write("_");
    end
    else begin
        $write(" ");
    end

    if (seg[5]) begin   //b
        $write("|");
    end
    else begin
        $write(" ");
    end

    $write("\n");

    if (seg[2]) begin   //e
        $write("|");
    end
    else begin
        $write(" ");
    end

    if (seg[3]) begin   //d
        $write("_");
    end
    else begin
        $write(" ");
    end

    if (seg[4]) begin   //c
        $write("|");
    end
    else begin
        $write(" ");
    end

    $write("\n\n");
end

endmodule