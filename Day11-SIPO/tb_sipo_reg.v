`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.07.2024 09:00:17
// Design Name: 
// Module Name: tb_sipo_reg
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


module tb_sipo_reg();
reg clk,rst;
reg si;
wire [3:0]po;

sipo_reg dut(.clk(clk),.rst(rst),.si(si),.po(po));

initial begin
forever #5 clk = ~clk;
end

initial begin
clk = 0;
rst = 0;
si = 0;
#50 
rst = 1;
#10 
rst = 0;
#10
si = 1;
#10
si = 1;
#10
si = 0;
#10
si = 0;
#10
si = 1;
#10
si = 1;
#10
si = 0;
end

endmodule

