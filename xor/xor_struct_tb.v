module xor_struct_tb();

    reg a, b;
    wire o;

    xor_struct uut(.a(a), .b(b), .o(o));

    initial begin
        $dumpfile("xor_struct.vcd");
        $dumpvars(0, xor_struct_tb);
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
