module register_file #( parameter bits = 8 , width = 4 )(
        input wire clk, w_en,
        input wire [width - 1:0] w_addr, r_addr,
        input wire [bits - 1:0] w_data,
        output wire [bits - 1:0] r_data
    );

    reg [bits - 1:0 ] reg_file [0: 2**width - 1];

    always@(posedge clk)begin
        if(w_en)
            reg_file[w_addr] <= w_data;
    end
    assign r_data = reg_file[r_addr];
endmodule
