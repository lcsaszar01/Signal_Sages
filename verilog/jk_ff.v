// Referenced http://www.faadooengineers.com/online-study/post/ece/digital-elecronics/450/j-k-flip-flop-with-preset-and-clear-inputs#:~:text=The%20flip%2Dflop%20is%20cleared,CLEAR%20input%20is%20'1'.
// As well as https://www.javatpoint.com/verilog-jk-flip-flop

module jk_ff(
	input j,
	input k,
	input clk,
	input clr,
	output reg q);

	always @(posedge clk) begin

		if (!clr)
			q <= 1'b0; // Set q to 0 when clr is asserted
		else
			case ({j,k})
				2'b00 : q <= q;
				2'b01 : q <= 0;
				2'b10 : q <= 1;
				2'b11 : q <= ~q;
			endcase
		end
	end
endmodule
