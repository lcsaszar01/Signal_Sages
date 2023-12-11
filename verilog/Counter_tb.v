

`include "counter.v"

module counter_tb;

  reg clk;
  reg en;
  reg clr;
  wire rocs;
  wire rocl;

  counter uut (
    .clk(clk),
    .en(en),
    .clr(clr),
    .rocs(rocs),
    .rocl(rocl)
  );


  always #5 clk = ~clk;


  initial begin
    clk = 0;
    en = 0;
    clr = 0;


    #10 clr = 1;
    #5 clr = 0;

    #5 en = 1;
    #20;
    $finish;
  end

endmodule