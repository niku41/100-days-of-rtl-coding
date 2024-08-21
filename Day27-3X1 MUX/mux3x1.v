`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.08.2024 21:40:41
// Design Name: 
// Module Name: mux3x1
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


module mux3x1(
    input a,b,c,
    input [1:0] sel,
    output reg mux_out
    );
    
    always@(a or b or c or sel)begin
    if(sel == 2'b00)begin
        mux_out = a;
    end
    else if(sel == 2'b00)begin
        mux_out = b;
    end
    else if(sel == 2'b00)begin
        mux_out = c;
    end
    else
        mux_out = c;
    end
    
endmodule
