#Signal Sages Final Project Verilog Code
#Authors: Dan Schrage, Kate Mealey, Phyona Schrader, Lydia Csaszar
#final_datapath.v

module final_datapath (
	input R,
	input C,
	input S,
	input L,
	input clk,
	input s_NR,
	input en_NR,
	input s_NG,
	input en_NG,
	input s_NY,
	input en_NY,
	input s_ER,
	input en_ER,
	input s_EG,
	input en_EG,
	input s_EY,
	input en_EY,
	input [1:0]s_IC,
	input en_IC,
	output reg NR,
	output reg NG,
	output reg NY,
	output reg ER,
	output reg EG,
	output reg EY,
	output reg IC,
	output not_r,
	output c_and_l,
	output en_s,
	output l_or_notc
	);

	always @(posedge clk)
		if (en_NR)
			if (s_NR == 0)
				NR <= 0;
			else if (s_NR == 1)
				NR <= 1;
	always @(posedge clk)
		if (en_NG)
			if (s_NG == 0)
				NG <= 0;
			else if (s_NG == 1)
				NG <= 1;
	always @(posedge clk)
		if (en_NY)
			if (s_NY == 0)
				NY <= 0;
			else if (s_NY == 1)
				NY <= 1;
	always @(posedge clk)
		if (en_ER)
			if (s_ER == 0)
				ER <= 0;
			else if (s_ER == 1)
				ER <= 1;
	always @(posedge clk)
		if (en_EG)
			if (s_EG == 0)
				EG <= 0;
			else if (s_EG == 1)
				EG <= 1;
	always @(posedge clk)
		if (en_EY)
			if (s_EY == 0)
				EY <= 0;
			else if (s_EY == 1)
				EY <= 1;
	always @(posedge clk)
		if (en_IC)
			if (s_IC == 2'b00)
				IC <= 0;
			else if (s_IC == 2'b01)
				IC <= ~R;
			else if (s_IC == 2'b10)
				IC <= L & C;
			else if (s_IC == 2'b11)
				IC <= L + ~C;

	assign not_r = ~R;
	assign c_and_l = C & L;
	assign en_s = S;
	assign l_or_notc = L | ~C;

endmodule
