module decade_counter_tb();

    reg en, clk;
    wire [3:0] cnt;

    decade_counter uut(.en(en), .clk(clk), .cnt(cnt));

    initial begin
        $dumpfile("decade_counter.vcd");
        $dumpvars(0, decade_counter_tb);
        en = 1'b1;          //Number of bits'Binary system Value
        clk = 1'b1;

        #60 $finish;       //global reset, # is time delay (in nanoseconds)
    end
    
    always #1 clk=~clk;    //Clock input
    always #25 en=~en;	   //Enable input
    
    initial begin
        $monitor("time = %0t, count = %d", $time, cnt);
    end

endmodule
