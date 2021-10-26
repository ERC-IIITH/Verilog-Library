module jk_ff(j, k, clk, q, qc);
//Positive edge triggered flipflop
    input j, k, clk;
    output reg q, qc;
    always @(posedge clk)
    begin
        if(k == 0)
        begin
            if(j == 1)
            begin
                q <= 1;
                qc <= 0;
            end
            else
            begin
                q <= q;
                qc <= qc;
            end
        end
        else if(j == 1)
        begin
            q <= ~q;
            qc <= ~qc;
        end
        else
        begin
            q <= 0;
            qc <= 1;
        end
    end
endmodule