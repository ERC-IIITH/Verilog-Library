module test();

    reg a, b;
    wire o, d;

    XOR uut(.a(a), .b(b), .o(o), .d(d));

    initial begin
        $dumpfile("XOR2.vcd");
        $dumpvars(0, test);
        a = 1'b0;       //Number of bits'Binary system Value
        b = 1'b0;

        #40 $finish;    //global reset, # is time delay (in nanoseconds)
    end
    
    always #10 a=~a;    //Different test cases, 00, 10, 01, 11
    always #20 b=~b;
    always @(posedge d) 
        $display("time = %0t, a = %b, b = %b, o = %b", $time, a, b, o);

endmodule