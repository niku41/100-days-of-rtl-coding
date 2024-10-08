`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.05.2024 22:40:06
// Design Name: 
// Module Name: tb_short_timer
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module tb_short_timer();

reg tb_clk;
reg tb_arst;
reg tb_TL_start;
wire tb_TL_out;

long_timer DUT(.clk(tb_clk),.arst(tb_arst),.TL_start(tb_TL_start),.TL_out(tb_TL_out));

always #5 tb_clk = ~tb_clk;

initial
 begin
  tb_arst <= 1'b1;
  tb_clk <= 1'b0;
  tb_TL_start <= 1'b0;
  #10;
  tb_arst <= 1'b0;
  tb_TL_start <= 1'b1;
  #20;
  tb_TL_start <= 1'b0;
  #300;
  $finish();
 end
endmodule
