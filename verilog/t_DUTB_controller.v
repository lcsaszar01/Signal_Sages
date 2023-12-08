`timescale 1ns/1n
module t_DUTB_controller();

	reg input clk, not_r, c_and_l, l_or_notc;

	wire en_s;
	
	
	UUT_controller 
(clk, not_r, c_and_l, l_or_notc, en_s)

	initial begin
	 #40 $finish;
	 end

	initial begin //stimulus patterns
	 #10 en_s = 0; 
	 #10 en_s = 1;

	 end

endmodule