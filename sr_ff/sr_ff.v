module sr_ff(clk, s, r, q, qbar);

input clk, s, r;
output reg q, qbar;

always @(posedge clk) begin
    if(s == 1)
        begin
            q <= 1;
            qbar <= 0;
        end
    else if (r == 1)
        begin
            q <= 0;
            qbar <= 1;
        end
    else
        begin
            q <= q;
            qbar <= qbar;
        end
end

endmodule