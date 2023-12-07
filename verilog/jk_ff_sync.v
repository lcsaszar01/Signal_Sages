// Code copied from https://verilogcodes.blogspot.com/2015/11/verilog-code-for-jk-flip-flop-with.html

module jk_ff_sync(
	input j,
	input k,
	input clk,
	input clr,
	output reg q);

	always@(posedge(clk))
	begin
		if(!clr)
			q <=0;
		else
			case ({j,k})
				2'b00 : q <= q;
				2'b01 : q <= 0;
				2'b10 : q <= 1;
				2'b11 : q <= ~q;
			endcase
	end
endmodule
