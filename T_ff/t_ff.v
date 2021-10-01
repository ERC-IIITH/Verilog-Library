//T flip flop with asynchronous active high reset
module t_ff(
    input clk,t,reset,
    output reg q,qbar);

always @(posedge clk or posedge reset) begin
    if(reset) begin
        q <= 1'b0;
        qbar <= 1'b1;
    end
    else begin
        q <= ~t;
        qbar <= t;
    end
end
endmodule   