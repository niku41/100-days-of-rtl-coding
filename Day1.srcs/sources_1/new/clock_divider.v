`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.07.2024 10:07:21
// Design Name: 
// Module Name: clock_divider
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


module clock_divider(
    input clk,rst,      //input
    output reg clk_div_by_2,clk_div_by_4,clk_div_by_16,clk_div_by_8  //output
    );
    reg [4:0]count;
    always@(posedge clk)begin
    if(rst)begin
        count = 0;
        end
     else begin
        count = count + 1;
        clk_div_by_2 = count[1];    // clock divided by 2
        clk_div_by_4 = count[2];    // clock divided by 4
        clk_div_by_16 = count[4];   // clock divided by 16
        clk_div_by_8 = count[3];    // clock divided by 8
        end
    end
    
endmodule
