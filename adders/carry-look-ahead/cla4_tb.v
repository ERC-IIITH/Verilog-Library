module cla4_tb;
    // Inputs
    reg [3:0] a;
    reg [3:0] b;
    reg cin;

    // Outputs
    wire [3:0] bsum,dsum,gsum;
    wire d,g,B;

    b_cla4 uu (
        .a(a),
        .b(b),
        .cin(cin),
        .sum(bsum),
        .cout(B)
    );
    d_cla4 uut (
        .a(a),
        .b(b),
        .cin(cin),
        .sum(dsum),
        .cout(d)
    );
    g_cla4 u(
        .a(a),
        .b(b),
        .cin(cin),
        .sum(gsum),
        .cout(g)
    );
    initial begin
    // Initialize Inputs
        a = 0;
        b = 0;
        cin = 1;
        // Wait 100 ns for global reset to finish
        #100;
        a = 0;
        b = 0;
        cin = 0;
        // Wait 100 ns for global reset to finish
        #100;
        a = 5;
        b = 6;
        cin = 1;
        // Wait 100 ns for global reset to finish
        #100;
        a = 5;
        b =6;
        cin =0;
        #100;
    end
endmodule
