`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.03.2024 23:48:46
// Design Name: 
// Module Name: counter_module
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


module counter_module(
input clk, arst,
output [3:0] counter_out,
output  second_freqn_divider );
    wire w1;
    freq_divider  freqn_divi_inst_1(.fdout_2(second_freqn_divider),.fdout_1(w1),.clk(clk),.arst(arst) );
    counter  counter_inst_1(.clk(w1) ,.arst(arst),.count(counter_out));
    
endmodule