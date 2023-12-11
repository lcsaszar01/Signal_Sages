`include "final_controller.v"
`include "final_datapath.v"
`include "counter.v"
module final_path (
	input clk,
	input R,
	input C,
	input in_EN,
	output out_NR,
	output out_NG,
	output out_NY,
	output out_ER,
	output out_EG,
	output out_EY
	);

	wire s_NR;
	wire en_NR;
	wire s_NG;
	wire en_NG;
	wire s_NY;
	wire en_NY;
	wire s_ER;
	wire en_ER;
	wire s_EG;
	wire en_EG;
	wire s_EY;
	wire en_EY;
	wire [1:0]s_IC;
	wire en_IC;	
	wire out_IC;
	
	wire rcos;
	wire rcol;

	wire not_r;
	wire c_and_l;
	wire en_s;
	wire l_or_notc;

	final_datapath datapath(
		.R (R),
		.C (C),
		.S (rcos),
		.L (rcol),
		.clk (clk),
		.s_NR (s_NR),
		.en_NR (en_NR),
		.s_NG (s_NG),
		.en_NG (en_NG),
		.s_NY (s_NY),
		.en_NY (en_NY),
		.s_ER (s_ER),
		.en_ER (en_ER),
		.s_EG (s_EG),
		.en_EG (en_EG),
		.s_EY (s_EY),
		.en_EY (en_EY),
		.s_IC (s_IC),
		.en_IC (en_IC),
		.out_NR (out_NR),
		.out_NG (out_NG),
		.out_NY (out_NY),
		.out_ER (out_ER),
		.out_EG (out_EG),
		.out_EY (out_EY),
		.out_IC (out_IC),	
		.not_r (not_r),
		.c_and_l (c_and_l),
		.en_s (en_s),
		.l_or_notc (l_or_notc)
	);

	final_controller controller(
		.clk (clk),
		.not_r (not_r),
		.c_and_l (c_and_l),
		.en_s (en_s),
		.l_or_notc (l_or_notc),
		.s_NR (s_NR),
		.en_NR (en_NR),
		.s_NG (s_NG),
		.en_NG (en_NG),
		.s_NY (s_NY),
		.en_NY (en_NY),
		.s_ER (s_ER),
		.en_ER (en_ER),
		.s_EG (s_EG),
		.en_EG (en_EG),
		.s_EY (s_EY),
		.en_EY (en_EY),
		.s_IC (s_IC),
		.en_IC (en_IC)
	);

	counter counter(
		.clk (clk),
		.in_EN (in_EN),
		.clr (out_IC),
		.rcos (rcos),
		.rcol (rcol)
	);

endmodule
