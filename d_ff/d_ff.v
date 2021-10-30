module d_ff(
    clk, d, q, qbar
);

input clk, d;
output reg q, qbar;

always @(posedge clk) begin
    if(d == 1)
        begin
            q <= 1;
            qbar <= 0;
        end
    else
        begin
            q <= 0;
            qbar <= 1;
        end
end

endmodule