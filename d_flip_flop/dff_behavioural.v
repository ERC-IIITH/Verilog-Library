module dff(d , q , clk , reset)
    input d , clk , reset;
    output reg q;
    initial q = 1'b0;
    always @ (posedge clk or negedge reset)
    begin
        if(!reset)
            begin 
                q <= 1'b0;
            end
        else
            begin   
                q <= d;
            end
    end
endmodule