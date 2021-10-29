module ALU_8_tb();

    reg [7:0] a, b;
    reg [3:0] opcode;
    wire [8:0] res;
    wire carry, zero;

    ALU_8 uut(.opcode(opcode), .a(a), .b(b), .res(res), .carry(carry), .zero(zero));

    initial begin
        $dumpfile("ALU_8.vcd");
        $dumpvars(0, ALU_8_tb);
        a = 8'b00010100;          //Number of bits'Binary system Value
        b = 8'b01001111;
        opcode = 4'b0;

        #60 $finish;       //global reset, # is time delay (in nanoseconds)
    end
    
    always #5 opcode = opcode + 1;    //Clock input
    
    initial begin
        $monitor("time = %0t, a = %b, b = %b, res = %b, carry = %b, zero = %b", $time, a, b, res[7:0], carry, zero);
    end

endmodule