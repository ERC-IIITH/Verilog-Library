module test();

    reg a, b;
    wire o;

    XOR_struct uut(.a(a), .b(b), .o(o));

    initial begin
        $dumpfile("XOR1.vcd");
        $dumpvars(0, test);
        a = 1'b0;       //Number of bits'Binary system Value
        b = 1'b0;

        #41 $finish;    //global reset, # is time delay (in nanoseconds)
    end
    
    always #10 a=~a;    //Different test cases, 00, 10, 01, 11
    always #20 b=~b;
    always @(a, b) 
        #1
        $display("time = %0t, a = %b, b = %b, o = %b", $time, a, b, o);

endmodule