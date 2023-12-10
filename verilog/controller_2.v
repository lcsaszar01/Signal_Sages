#Signal Sages Final Project Verilog Code
#Authors: Dan Schrage, Kate Mealey, Phyona Schrader, Lydia Csaszar
# controller_2_design.v

`include "d_ff.v"

module controller_2(
    input R, 
    input clk,
    input S,
    input L,
    input C,
    output IC,
    output NR,
    output NG,
    output NY,
    output ER,
    output EG,
    output ER); 

    wires a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,q1,q2,q3,nq1,nq2,nq3,d1,d2,d3;

    //start of the combo logic
    and(a, ~R, q2m, nq3); //A1
    and(b, ~s, q1, q2);   //A2
    and(c, q1, q2, nq3);  //A3
    or(d1, a,b,c);        //o1
    and(d, ~S, q2);       //A4
    and(e, L, C, nq1, q3);//A5
    and(F, nq1, q2);      //A6
    and(g, q1, nq3);      //A7 


endmodule