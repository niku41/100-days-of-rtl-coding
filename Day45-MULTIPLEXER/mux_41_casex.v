`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.01.2024 15:52:05
// Design Name: 
// Module Name: mux_41_casex
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


module mux_41_casex(sel,i_0,i_1,i_2,i_3,mux_out);
    input [1:0] sel;
    input i_0,i_1,i_2,i_3;
    output reg mux_out;
    always @(sel or i_0 or i_1 or i_2 or i_3)
    begin
        casex(sel)
            3'b000:mux_out=i_0;
            3'b001:mux_out=i_1;
            3'b010:mux_out=i_2;
            3'b011:mux_out=i_3;
            3'b1xx:mux_out=1'b0;
        endcase
    end
endmodule
