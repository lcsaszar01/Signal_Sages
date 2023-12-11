#Signal Sages Final Project Verilog Code
#Authors: Dan Schrage, Kate Mealey, Phyona Schrader, Lydia Csaszar
# final_tb.v

`timescale 1ns/1ps

module final_tb(clk, R, C, EN, NR, NG, NY, ER, EG, EY);
    input clk, R, C, EN;
    output NR, NG, NY, ER, EG, EY;

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

    final uut (
        //Inputs
        .clk (clk);
        .R (R);
        .C (C);
        .EN (EN);

        //output wires for controller
        .s_NR (s_NR);
        .en_NR (en_NR);
        .en_NG (en_NG);
        .s_NY (s_NY);
        .en_NY (en_NY);
        .s_ER (s_ER);
        .en_ER (en_ER);
        .s_EG (s_EG);
        .en_EG (en_EG);
        .s_EY (s_EY);
        .en_EY (en_EY);
        .[1:0]s_IC (s_IC);
        .en_IC (en_IC);

        //wires to counter
        .IC (IC);
        .rcos (rcos);
        .rcol (rcol);

        //logic wires
        .not_r (not_r);
        .c_and_l (c_and_l);
        .en_s (en_s);
        .l_or_notc (l_or_notc); 


        always #5 clk = ~clk;

        initial begin
            clk= 0; IC= 0; R=0; C=0; EN=1;
            #20 R=1; C=0;
            #20 R=0; C=1;
            #20 R=1; C=0;
            $20 R=1; C=1;
            #20 $stop;

        end 
    );