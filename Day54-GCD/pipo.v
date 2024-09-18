`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.02.2024 09:35:34
// Design Name: 
// Module Name: pipo
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


module pipo(
input[15:0] in0, in1,
input sel,
output [15:0]out
);
assign out= sel? in1:in0;
endmodule

