module cau3(SW, KEY, LEDR);
	input [0:0]SW, KEY; // t = SW0, clk = KEY0
	output [0:0]LEDR;   // q = LEDR
	
	FF_T(SW[0], KEY[0], LEDR[0]);
endmodule

module FF_T(t, clk, q);
	input t, clk;
	output q;
	wire m1, m2, d;
	
	and(m1, ~t, q);
	and(m2, t, ~q);
	or(d, m1, m2);
	FF_D(d, clk, q);
endmodule

module FF_D(d, clk, q);
	input d, clk;
	output reg q;
	
	always @(posedge clk)
		q <= d;
endmodule