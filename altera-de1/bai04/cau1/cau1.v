module cau1(SW, KEY, LEDR);
	input [2:0]SW; // SW0 = D0, SW1 = D1, SW2 = s
	input [0:0]KEY;
	output [0:0]LEDR; // LEDR0 = q
	wire d;
	
	mux_21(SW[0], SW[1], SW[2], d);
	FF_D(d, KEY[0], LEDR[0]);
endmodule

module mux_21(x, y, s, m);
	input x, y, s;
	output m;
	
	assign m = s?y:x;
endmodule

module FF_D(d, clk, q);
	input d, clk;
	output reg q;
	
	always @(posedge clk)
		q <= d;
endmodule