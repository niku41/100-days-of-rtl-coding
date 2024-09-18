`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.02.2024 09:33:03
// Design Name: 
// Module Name: compare
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


module compare(
input [15:0]data1,data2,
output lt,gt,eq
);
assign lt = data1 < data2;
assign gt = data1 > data2;
assign eq = data1 == data2;
endmodule
