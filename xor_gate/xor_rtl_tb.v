module xor_rtl_tb();

    reg a, b;
    wire o, d;

    xor_rtl uut(.a(a), .b(b), .o(o));

    initial begin
        $dumpfile("xor2.vcd");
        $dumpvars(0, xor_rtl_tb);
        a = 1'b0;       //Number of bits'Binary system Value
        b = 1'b0;

        #30 $finish;    //global reset, # is time delay (in nanoseconds)
    end
    
    always #10 a=~a;    //Different test cases, 00, 10, 01, 11
    always #20 b=~b;
    initial begin
        $monitor("time = %0t, a = %b, b = %b, o = %b", $time, a, b, o);
    end

endmodule