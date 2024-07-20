`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.07.2024 09:20:10
// Design Name: 
// Module Name: tb_pipo_reg
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


module tb_pipo_reg();
reg clk,rst;
reg [3:0]pi;
wire [3:0]po;

pipo_reg dut(.clk(clk),.rst(rst),.pi(pi),.po(po));

initial begin
forever #5 clk = ~clk;
end

initial begin
clk = 0;
rst = 0;
pi = 4'b1010;
#50 
rst = 1;
#10 
rst = 0;
#10
pi = 4'b1111;
#10
pi = 4'b0111;
#10
pi = 4'b0000;
end

endmodule
