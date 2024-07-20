`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.07.2024 08:20:59
// Design Name: 
// Module Name: sipo_reg
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


module sipo_reg(
    input clk,rst,
    input si,
    output [3:0]po
    );
    reg [3:0]temp;
    
    always@(posedge clk)begin
    if(rst)
        temp <= 4'b0000;
    else begin
        temp[0] <= si;
        temp[1] <= temp[0];
        temp[2] <= temp[1];
        temp[3] <= temp[2];
    end
    end
    
    assign po = temp;
    
endmodule