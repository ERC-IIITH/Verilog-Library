`include "nand_struct.v"

module nand_struct_tb();

    reg a, b;
    wire o;

    nand_struct uut(.a(a), .b(b), .o(o));

    initial begin
        $dumpfile("nand_struct.vcd");
        $dumpvars(0, nand_struct_tb);
        a = 1'b0;       
        b = 1'b0;

        #30 $finish;    
    end
    
    always #10 a=~a;    
    always #20 b=~b;
    initial begin
        $monitor("time = %0t, a = %b, b = %b, o = %b", $time, a, b, o);
    end

endmodule