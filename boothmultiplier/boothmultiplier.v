module booth_mul(p, m, q);
    input signed [3:0] m,q;
	output  [7:0] p;
    reg  [7:0] out;
    reg signed[3:0] neg_m;
    wire [3:0] acc;
    reg q1;
	integer i;
	
   always@ (m,q)
	  begin
        out=8'b00000000;
		q1= 1'b0;
		for(i=0;i<4;i++)
		begin
		   if(q[i]==1'b0 && q1==1'b1)
		   begin
		      out[7:4] = out[7:4] + m;
		   end
		   if(q[i]==1'b1 && q1==1'b0)
		   begin
		      out[7:4] = out[7:4] +~m+1;
		   end
		   out>>=1;
		   out[7]=p[6];
		   q1=q[i];
		end
	  end
      assign p = out;
endmodule

