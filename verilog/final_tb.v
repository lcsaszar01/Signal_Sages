//Signal Sages Final Project Verilog Code
//Authors: Dan Schrage, Kate Mealey, Phyona Schrader, Lydia Csaszar
//final_tb.v

`timescale 1ns/1ps

module final_tb();
	reg clk, R, C, in_EN;
    wire out_NR, out_NG, out_NY, out_ER, out_EG, out_EY;

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

 	reg wire_IC;
	wire rcos;
	wire rcol;

	wire not_r;
	wire c_and_l;
	wire en_s;
	wire l_or_notc;

    final_path uut (
        .clk (clk), //Inputs & Registers
        .R (R),
        .C (C),
        .in_EN(in_EN),
		.out_NR (out_NR),
		.out_NG (out_NG),
		.out_NY (out_NY),
		.out_ER (out_ER),
		.out_EG (out_EG),
		.out_EY (out_EY)
	);


        initial begin
			assign clk = 0;
			forever #1 clk = ~clk;
		end

		
        initial begin
            wire_IC= 0; 
			R=0; 
			C=0; 
			in_EN=0;
            #20 
			R=1; 
			C=0;
            #20 
			R=0; 
			C=1;
            #20 
			R=1; 
			C=0;
            #20 
			R=1; 
			C=1;
            #20 $stop;
        end

endmodule
 
