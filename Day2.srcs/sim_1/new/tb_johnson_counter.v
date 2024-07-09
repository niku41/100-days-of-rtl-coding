`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.07.2024 11:43:15
// Design Name: 
// Module Name: tb_johnson_counter
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


module tb_johnson_counter();
reg rst,clk;
wire [3:0] out;

johnson_counter dut(.rst(rst),.clk(clk),.out(out));

initial begin 
forever #5 clk = ~clk;
end

initial begin
clk = 0;
rst = 0;
#50;
rst = 1;
#50;
rst = 0;
#500;
rst = 1;
#500;
$finish;
end

endmodule
