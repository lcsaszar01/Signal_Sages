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
	output reg out_NR,
	output reg out_NG,
	output reg out_NY,
	output reg out_ER,
	output reg out_EG,
	output reg out_EY,
	output reg out_IC,
	output not_r,
	output c_and_l,
	output en_s,
	output l_or_notc
	);

	always @(posedge clk)
		if (en_NR)
			if (s_NR == 0)
				out_NR <= 0;
			else if (s_NR == 1)
				out_NR <= 1;
	always @(posedge clk)
		if (en_NG)
			if (s_NG == 0)
				out_NG <= 0;
			else if (s_NG == 1)
				out_NG <= 1;
	always @(posedge clk)
		if (en_NY)
			if (s_NY == 0)
				out_NY <= 0;
			else if (s_NY == 1)
				out_NY <= 1;
	always @(posedge clk)
		if (en_ER)
			if (s_ER == 0)
				out_ER <= 0;
			else if (s_ER == 1)
				out_ER <= 1;
	always @(posedge clk)
		if (en_EG)
			if (s_EG == 0)
				out_EG <= 0;
			else if (s_EG == 1)
				out_EG <= 1;
	always @(posedge clk)
		if (en_EY)
			if (s_EY == 0)
				out_EY <= 0;
			else if (s_EY == 1)
				out_EY <= 1;
	always @(posedge clk)
		if (en_IC)  //Inverse everything because that is the input to counter.
			if (s_IC == 2'b00)
				out_IC <= 1;
			else if (s_IC == 2'b01)
				out_IC <= R;
			else if (s_IC == 2'b10)
				out_IC <= ~(L & C);
			else if (s_IC == 2'b11)
				out_IC <= ~(L + ~C);

	assign not_r = ~R;
	assign c_and_l = C & L;
	assign en_s = S;
	assign l_or_notc = L | ~C;

endmodule
