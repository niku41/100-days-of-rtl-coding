`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.07.2024 16:27:54
// Design Name: 
// Module Name: tb_positive_edge_detector
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


module tb_positive_edge_detector();
reg d,clk;
wire pos_edge;

positive_edge_detector dut(.d(d),.clk(clk),.pos_edge(pos_edge));

initial begin
forever #5 clk = ~clk;
end
initial begin
clk = 0;
d = 0;
#10;
d = 1;
#10;
d = 1;
#10;
d = 1;
#10;
d = 0;
#10;
d = 0;
#10;
d = 1;
#10;
d = 0;
#10;
d = 1;
end

endmodule
