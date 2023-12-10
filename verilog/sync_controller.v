#Signal Sages Final Project Verilog Code
#Authors: Dan Schrage, Kate Mealey, Phyona Schrader, Lydia Csaszar
#sync_controller.v

module sync_controller(
    input clk,
    input en,
    
    );

    always @(posedge clk)
        begin

        end
endmodule

module and_wire(
    input Q0,
    input en,
    output y1);

    assign y = Q0 & en;

endmodule