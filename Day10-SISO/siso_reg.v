`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.07.2024 08:10:54
// Design Name: 
// Module Name: siso_reg
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


module siso_reg(
    input clk,rst,
    input si,
    output so
    );
    reg [3:0]temp;
    
    always@(posedge clk)begin
    if(rst)
        temp <= 0;
    else begin
        temp[3] <= si;
        temp[2] <= temp[3];
        temp[1] <= temp[2];
        temp[0] <= temp[1];
    end
    end
    
    assign so = temp[0];
    
endmodule
