module cau5(SW,KEY,HEX0,HEX1,HEX2,HEX3);
	input [7:0]SW;
	input [1:0]KEY;
	output [6:0]HEX0,HEX1,HEX2,HEX3;
	wire [7:0]Q;
	Decoder_HEX (SW[3:0],HEX3); 
	Decoder_HEX (SW[7:4],HEX2); 
	D_LATCH (SW[3:0],KEY[0],KEY[1],Q[3:0]);
	Decoder_HEX(Q[3:0],HEX1);
	D_LATCH (SW[7:4],KEY[0],KEY[1],Q[7:4]);
	Decoder_HEX(Q[7:4],HEX0);
endmodule

module  D_LATCH(D, clk, Reset, Q);  
	input D, clk, Reset;  
	output reg Q;  
	always@(posedge clk, negedge Reset)   
	if(~Reset)    
		Q <= 0;   
	else    
		Q <= D; 
endmodule

module Decoder_HEX(c, hex);
	input [3:0]c;
	output reg [6:0]hex;
	always @(c) 
	case (c)       //abcdefg    
		0: hex = 7'b0000001;       
		1: hex = 7'b1001111;    
		2: hex = 7'b0010010;    
		3: hex = 7'b0000110;    
		4: hex = 7'b1001100;    
		5: hex = 7'b0100100;    
		6: hex = 7'b0100000;    
		7: hex = 7'b0001111;    
		8: hex = 7'b0000000;    
		9: hex = 7'b0000100;  
		default: hex = 7'b1111111;
	endcase    
endmodule
