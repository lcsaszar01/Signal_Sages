// Adapted code at https://www.chipverify.com/verilog/verilog-jk-flip-flop

module jk_ff_tb;
	reg j;
	reg k;
	reg clk;
	reg clr;

	always #5 clk = ~clk;

	jk_ff jk0(.j(j), .k(k), .clk(clk), .clr(clr), .q(q));

  	initial begin
    	$monitor("j = %b, k = %b, clr = %b -> q = %b", j, k, clr, q);
    	//j=0; k=0; clr=0; #5;
    	//j=0; k=1; clr=0; #5;
    	//j=1; k=0; clr=0; #5;
    	//j=1; k=1; clr=0; #5;
    	j=0; k=0; clr=1; #5;
    	j=0; k=1; clr=1; #10;
    	j=1; k=0; clr=1; #10;
    	j=1; k=1; clr=1; #10 $finish;
  	end
endmodule
