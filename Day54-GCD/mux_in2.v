`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.02.2024 21:27:28
// Design Name: 
// Module Name: mux_in2
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


module mux_in2(
input[15:0] in0, in1,
input sel,
output [15:0]out
);
assign out= sel? in1:in0;
endmodule


