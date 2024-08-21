`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.08.2024 20:43:22
// Design Name: 
// Module Name: nx1_mux
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


module nx1_mux(in,sel,mux_out);
parameter n = 16;
    input [n-1:0]in;
    input [3:0] sel;
    output reg mux_out;
    
    always@(in or sel)
    begin
    case(sel)
    4'b0000 : mux_out = in[0];
    4'b0001 : mux_out = in[1];
    4'b0010 : mux_out = in[2];
    4'b0011 : mux_out = in[3];
    4'b0100 : mux_out = in[4];
    4'b0101 : mux_out = in[5];
    4'b0110 : mux_out = in[6];
    4'b0111 : mux_out = in[7];
    4'b1000 : mux_out = in[8];
    4'b1001 : mux_out = in[9];
    4'b1010 : mux_out = in[10];
    4'b1011 : mux_out = in[11];
    4'b1100 : mux_out = in[12];
    4'b1101 : mux_out = in[13];
    4'b1110 : mux_out = in[14];
    4'b1111 : mux_out = in[15];
    endcase
    end
    
endmodule
