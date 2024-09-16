`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.02.2024 11:12:47
// Design Name: 
// Module Name: dff
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


module dff(f,s0,s1,i0,i1,i2,i3);
input s0,s1,i0,i1,i2,i3;
output f;
udp_dff DFF(f,s0,s1,i0,i1,i2,i3);
endmodule
