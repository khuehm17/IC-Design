module FF_T(j, k, clk, q);
	input j, k, clk;
	output q;
	wire m1, m2, d;
	
	and(m1, j, ~q);
	and(m2, ~k, q);
	or(d, m1, m2);
	FF_D(d, clk, q);
endmodule