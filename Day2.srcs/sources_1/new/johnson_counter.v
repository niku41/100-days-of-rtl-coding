`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.07.2024 11:41:52
// Design Name: 
// Module Name: johnson_counter
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


module johnson_counter(
    input rst,clk,
    output reg [3:0] out
    );
    
    always@(posedge clk,posedge rst)begin
    if(rst)
    out = 4'b0000;
    else begin
    out[3] <= out[2];   // Shift bit 2 to bit 3
    out[2] <= out[1];   // Shift bit 1 to bit 2
    out[1] <= out[0];   // Shift bit 0 to bit 1
    out[0] <= ~out[3];  //  Invert bit 3 and assign to bit 0
    end
    end
    
endmodule
