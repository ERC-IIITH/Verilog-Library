# 8 Bit ALU in Verilog HDL

## Inputs

Operands, Opcode.

## Outputs

Result, Carry flag, Zero flag.

## Functions

The ALU has 11 functions that are binary or unary, and that can be used on 8 bit binary numbers. These 11 functions are

- Add $\to$ 0000

- Subtract $\to$ 0001

- Multiply $\to$ 0010

- Divide $\to$ 0011

- And $\to$ 0100

- Or $\to$ 0101

- Nand $\to$ 0110

- Nor $\to$ 0111

- XOR $\to$ 1000

- Shift right $\to$ 1001

- Shift left $\to$ 1010

- Compare $\to$ 1011

Each of these functions have their own four bit opcodes, which have been specified beside them. These opcodes are what the ALU uses to determine which operation needs to be computed.

Two flags have been initialised in the ALU, one for the carry and one for indicating if the output is a zero. The carry flag is 1 when there is an output carry and is zero in all other cases, while the zero flag is 1 when the output is zero.

### Add function

Takes two 8 bit inputs. Returns the sum as a result, along with the appropriate flags.

### Subtract function

Takes two 8 bit inputs. Returns the difference as a result, along with the appropriate flags.

### Multiply function

Takes two 8 bit inputs. Returns the product as a result, along with the appropriate flags.

### Divide function

Takes two 8 bit inputs. Returns the quotient as a result, along with the appropriate flags.

### And function

Takes two 8 bit inputs. Returns the logical AND value of the two as a result, along with the appropriate flags.

### Or function

Takes two 8 bit inputs. Returns the logical OR value of the two as a result, along with the appropriate flags.

### Nand function

Takes two 8 bit inputs. Returns the logical NAND value of the two as a result, along with the appropriate flags.

### Nor function

Takes two 8 bit inputs. Returns the logical NOR value of the two as a result, along with the appropriate flags.

### XOR function

Takes two 8 bit inputs. Returns the logical XOR value of the two as a result, along with the appropriate flags.

### Shift right function

Takes one 8 bit input. Shifts all the bits by one position to the right.

### Shift left function

Takes one 8 bit input. Shifts all the bits by one position to the left.

### Compare function

Takes two 8 bit inputs. Returns an 8 bit number with all 1s if the first is greater than the second. All 0s in the 8 bit numer otherwise.

---