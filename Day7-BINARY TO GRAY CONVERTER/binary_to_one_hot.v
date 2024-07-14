`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.07.2024 10:24:44
// Design Name: 
// Module Name: binary_to_one_hot
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


module binary_to_one_hot(bin_i,one_hot_o);
    parameter BIN_W=4;
    parameter ONE_HOT_W=16;
    input [BIN_W-1:0]bin_i;
    output [ONE_HOT_W-1:0] one_hot_o;

    assign one_hot_o = 1'b1<<bin_i;

endmodule