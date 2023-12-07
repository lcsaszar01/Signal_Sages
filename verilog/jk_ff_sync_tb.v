// Code adapted from https://verilogcodes.blogspot.com/2015/11/verilog-code-for-jk-flip-flop-with.htmlcase

module jk_ff_sync_tb;

	reg j;
	reg k;
	reg clk;
	reg clr;

	wire q;

	jk_ff_sync jk_ff_sync(.j(j), .k(k), .clk(clk), .clr(clr), .q(q));

	initial clk = 0;
	always #10 clk = ~clk;

	initial begin
    	$monitor("j = %b, k = %b, clk = %b, clr = %b -> q = %b", j, k, clk, clr, q);
		j = 0;
		k = 0;
		clr = 1;
		#30;

		j = 0; k = 0; #50;
		j = 0; k = 1; #50;
		j = 1; k = 0; #50;
		j = 1; k = 1; #50;
	end
endmodule

