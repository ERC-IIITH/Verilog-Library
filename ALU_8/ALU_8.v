module ALU_8(opcode, a, b, res, carry, zero); 

    input [7:0] a, b;
    input [3:0] opcode;     
    output reg [8:0] res;   //Final result
    output reg carry, zero; //Flags

    parameter [3:0]         //Assigning 4 bit values to operations
        ADD = 4'b0000,
        SUB = 4'b0001,
        MULT = 4'b0010,
        DIV = 4'b0011,
        AND = 4'b0100,
        OR = 4'b0101,
        NAND = 4'b0110,
        NOR = 4'b0111,
        XOR = 4'b1000,
        SHIFTR = 4'b1001,
        SHIFTL = 4'b1010,
        COMP = 4'b1011;
    
    always @(opcode or a or b) begin        
        case (opcode)       //Cases for each opcode with their respective operations
            ADD : begin
                res = a + b;
                carry = res[8];
                zero = (res == 9'b0);
            end 
            SUB : begin
                res = a - b;
                carry = res[8];
                zero = (res == 9'b0);
            end
            MULT : begin
                res = a * b;
                zero = (res == 9'b0);
                carry = 0;
            end
            DIV : begin
                res = a / b;
                zero = (res == 9'b0);
                carry = 0;
            end
            AND : begin
                res = a & b;
                zero = (res == 9'b0);
                carry = 0;
            end
            OR : begin
                res = a | b;
                zero = (res == 9'b0);
                carry = 0;
            end
            NAND : begin
                res = ~(a & b);
                zero = (res == 9'b0);
                carry = 0;
            end
            NOR : begin
                res = ~(a | b);
                zero = (res == 9'b0);
                carry = 0;
            end
            XOR : begin
                res = a ^ b;
                zero = (res == 9'b0);
            end
            SHIFTR : begin
                res = a >> 1;
                zero = (res == 9'b0);
                carry = 0;
            end
            SHIFTL : begin
                res = a << 1;
                zero = (res == 9'b0);
                carry = 0;
            end
            COMP : begin
                res = (a > b) ? 9'b111111111 : 9'b0;
                zero = (res == 9'b0);
                carry = 0;
            end
            default : begin
                res = (a > b) ? 9'b111111111 : 9'b0;
                zero = (res == 9'b0);
                carry = 0;
            end
            
        endcase
    end
endmodule



















