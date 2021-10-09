module b_halfadder(a,b,sum,cout);
    input a,b;
    output reg sum,cout;
    always@(*)begin
        sum = a ^ b; 
        cout = a & b;
    end
endmodule
