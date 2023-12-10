//Signal Sages Final Project Verilog Code
//Authors: Dan Schrage, Kate Mealey, Phyona Schrader, Lydia Csaszar
//counter.v

`include "jk_ff.v"

module counter(
    input clk,
    input en,
    input clr,
    output rocs,
    output rocl);

    wires Q1, Q2, Q3, Q4, QN, t1, t2;

    jk_ff M1 (Q1, QN, clk, clr, EN);
    and(t1, Q1, EN);
    jk_ff M2 (Q2, QN, clk, clr, t1);
    and( t2, Q2, t1);
    jk_ff M3 (Q3, QN, clk, clr, t2);
    and( rocs, Q3, t2);
    jk_ff M4 (Q3, QN, clk, clr, rcos);
    and( rcol, Q4, rcos);


endmodule