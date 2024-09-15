`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.01.2024 15:02:49
// Design Name: 
// Module Name: mux_41_casez
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


module mux_41_casez(sel, a0, a1, a2, a3,out);
    input [1:0] sel;
    input a0, a1, a2, a3;
    output reg out;
 
    always @(sel or a0 or a1 or a2 or a3) begin
        casez(sel)
            3'b000: out = a0;
            3'b001: out = a1;
            3'b010: out = a2;
            3'b011: out = a3;
            3'b1??: out = 1'b0;
        endcase
    end
endmodule

