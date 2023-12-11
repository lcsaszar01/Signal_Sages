

`include "jk_ff.v"

module counter(
	input clk,
	input in_EN,
	input clr,
	output rcos,
	output rcol);

	wire qQ1, qQ2, qQ3, qQ4, t1, t2;

	jk_ff jk1(in_EN, in_EN, clk, clr, qQ1);
	and a1(t1, in_EN, qQ1);
	jk_ff jk2(t1, t1, clk, clr, qQ2);
	and a2(t2, t1, qQ2);
	jk_ff jk3(t2, t2, clk, clr, qQ3);
	and a3(rcos, t2, qQ3);
	jk_ff jk4(rcos, rcos, clk, clr, qQ4);
	and a4(rcol, rcos, qQ4);


endmodule
