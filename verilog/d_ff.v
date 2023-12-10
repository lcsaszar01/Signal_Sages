//Signal Sages Final Project Verilog Code
//Authors: Dan Schrage, Kate Mealey, Phyona Schrader, Lydia Csaszar
//counter.v

//References: https://www.javatpoint.com/verilog-d-flip-flop
//

module d_ff(
    input d,
    input clr,
    input clk,
    output reg q);

    always @ (clk or clr)
        if(!clr)
          q <=0;
        else   
          q <= d;

endmodule
