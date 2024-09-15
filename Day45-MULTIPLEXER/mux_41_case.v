`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.01.2024 15:39:26
// Design Name: 
// Module Name: mux_41_case
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


module mux_41_case(mux_out,i_0,i_1,i_2,i_3,sel);
input[1:0]sel;
input i_0,i_1,i_2,i_3;
output reg mux_out;
always @ * 
case(sel)
2'b00:mux_out=i_0;
2'b01:mux_out=i_1;
2'b10:mux_out=i_2;
2'b11:mux_out=i_3;
endcase
endmodule
