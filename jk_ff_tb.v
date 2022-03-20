`include "jk_ff.v"
module jk_ff_tb;

reg clk=0;
reg j=0;
reg k=0;
reg reset=1;
wire q,qnot;


  jkff dut(reset,clk,j,k,q,qnot);

initial begin
      $monitor($time,"j=%b k=%b q=%b qnot=%b",j,k,q,qnot);
  j=1'b1;  //set jk
  k=1'b1;
#5 reset=1'b0;
#25 $finish;
  end

always #1 clk=~clk;

endmodule
