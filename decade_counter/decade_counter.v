module decade_counter (en, clk, cnt);           //Decade counter with enable
    input en, clk;
    output reg [3:0] cnt;
    always @(posedge clk) begin
        if(en) begin
            if(cnt >= 4'd0 && cnt < 4'd10)       //Checking if current number lies between 0 and 10
                cnt <= cnt + 4'd1;               //Incrementing
            else
                cnt <= 4'd0;                     //Going back to 0
            end
       else
            cnt <= 4'd0;                        //Resetting when not enabled
    end
endmodule