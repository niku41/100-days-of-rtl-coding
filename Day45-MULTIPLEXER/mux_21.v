`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.01.2024 16:55:39
// Design Name: 
// Module Name: mux_21
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


module mux_21(
in_0,
in_1,
sel,
mux_out,
    );
    input in_0;
    input in_1;
    input sel;
    output mux_out;
    assign mux_out=((~sel)&in_0)|(sel&in_1);
endmodule
