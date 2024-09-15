`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.01.2024 11:34:21
// Design Name: 
// Module Name: mux_21_conditional
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


module mux_21_conditional(
in_0,
in_1,
sel,
mux_out,
    );
    input in_0;
    input in_1;
    input sel;
    output mux_out;
    assign mux_out=sel?in_1:in_0;
endmodule

