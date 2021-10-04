module nand(c , a , b); 
    input a , b; 
    output c; 
    assign c = ~(a & b); 
endmodule

module not(p , q); 
    input p; 
    output q; 
    assign p = ~q; 
endmodule

module DFF_structural(q , qbar , d , clk);
    input d , clk; 
    output q, qbar; 
    not g(dbar , d); 
    nand g1(x , clk , d); 
    nand g2(y , clk , dbar); 
    nand g3(q , qbar , y); 
    nand g4(qbar , q , x); 
endmodule