`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.07.2024 10:22:46
// Design Name: 
// Module Name: tb_clock_divider
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


module tb_clock_divider();

reg clk,rst;
wire clk_div_by_2,clk_div_by_4,clk_div_by_16,clk_div_by_8;

clock_divider dut(.clk(clk),.rst(rst),.clk_div_by_2(clk_div_by_2),.clk_div_by_4(clk_div_by_4),.clk_div_by_16(clk_div_by_16),.clk_div_by_8(clk_div_by_8));

initial begin
forever #5 clk = ~clk;
end

initial begin
clk = 0;
rst = 0;
#100 
rst = 1;
#100
rst = 0;
#500
$finish;
end

endmodule
