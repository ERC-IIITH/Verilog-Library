# 4 x 4 Booth Multiplier in Verilog

### Theory

Booth's multiplication algorithm is an algorithm which multiplies 2 signed integers in 2's complement. The algorithm is depicted in the following figure with a brief description. This approach uses fewer additions and subtractions than more straightforward algorithms.

* The multiplicand and multiplier are placed in the m and Q registers respectively. A 1 bit register is placed logically to the right of the LSB (least significant bit) Q0 of Q register.
* This is denoted by Q-1. A and Q-1 are initially set to 0.
* Control logic checks the two bits Q0 and Q-1.
* If the two bits are same (00 or 11) then all of the bits of A, Q, Q-1 are shifted 1 bit to the right.
* If they are not the same and if the combination is 10 then the multiplicand is subtracted from A and if the combination is 01 then the multiplicand is added with A.
* In both the cases results are stored in A, and after the addition or subtraction operation, A, Q, Q-1 are right shifted.
* The shifting is the arithmetic right shift operation where the left most bit namely, An-1 is not only shifted into An-2 but also remains in An-1.
* This is to preserve the sign of the number in A and Q.
* The result of the multiplication will appear in the A and Q.
  ![alt text](https://www.google.com/url?sa=i&url=http%3A%2F%2Fvlabs.iitkgp.ernet.in%2Fcoa%2Fexp7%2Findex.html&psig=AOvVaw37ISLrB4sjkJymfg41387K&ust=1633358171790000&source=images&cd=vfe&ved=0CAgQjRxqFwoTCKiWgMC7rvMCFQAAAAAdAAAAABAJ)
