module final (
	input clk,
	input R,
	input C,
	input EN,
	output NR,
	output NG,
	output NY,
	output ER,
	output EG,
	output EY
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
	
	wire IC;
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
		.NR (NR),
		.NG (NG),
		.NY (NY),
		.ER (ER),
		.EG (EG),
		.EY (EY),
		.IC (IC),
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
		.en (EN),
		.clr (IC),
		.rcos (rcos),
		.rcol (rcol)
	);

endmodule
