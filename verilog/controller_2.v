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
    output EY); 

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
    or(d2,d,e,f,g);       //or2
    and(h, ~R, nq1, nq2); //A8
    and(i, ~S, q2, q3);   //A9
    and(k, ~C, q2, nq3);  //A11
    and(L, nq1, nq2, q3); //A12
    and(m. nq1, q2, nq3); //A13
    xor(d3, h,i,j,k,l,m); //XOR
    d_ff M1(d1, clk, CLR, q1);
    d_ff M2(d2, clk, CLR, q2);
    d_ff M3(d3, clk, CLR, q3);
    or(NR, q1, nq3);      //or3
    and(NG, q1, nq2, nq1);//A18
    and(NY, q1, q2, nq1); //A19
    and(EG, q1, q2, qn3); //A20
    and(EY, q1, q2, q3);  //A21

    and(n, ~R, nq3, nq1); //A14
    and(o, ~C, C, NG);    //A15
    and(p, ~C, EG);       //A16
    and(q, L, EG);        //A17
    or(IC, n,o,p,q);      //or4

endmodule