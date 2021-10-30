module register_file_tb;
    reg w_en,clk; 
    reg [1:0] w_addr,r_addr;
    reg [7:0] w_data; 
    wire [7:0] r_data;

    register_file#(8,2) mem(clk, w_en , w_addr,r_addr,w_data,r_data );
    always #3 clk = ~clk;

    initial begin
        clk =0;
        w_en =1;
        w_addr = 0;
        r_addr = 0;
        w_data =10;
        
        #10  ;
        w_addr = 1;
        r_addr = 1;
        w_data =20;

        #10  ;
        w_addr = 2;
        r_addr = 2;
        w_data =30;
        
        #10  ;
        w_addr = 3;
        r_addr = 3;
        w_data =40;
        #10  ;
        r_addr = 0;
        #10  ;
        r_addr = 1;
        #10  ;
        r_addr = 2;
        #10  ;
        r_addr = 3;
    end
endmodule
