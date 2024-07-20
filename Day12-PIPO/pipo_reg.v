`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.07.2024 09:20:33
// Design Name: 
// Module Name: pipo_reg
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


module pipo_reg(
    input clk,rst,
    input [3:0]pi,
    output reg[3:0]po
    );
    
    always @(posedge clk)begin
    if(rst)
        po <= 4'b0000;
    else
        po <= pi;
    end
    
endmodule
