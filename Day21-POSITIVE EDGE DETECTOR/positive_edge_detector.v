`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.07.2024 16:28:18
// Design Name: 
// Module Name: positive_edge_detector
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


module positive_edge_detector(
    input d,clk,
    output pos_edge
    );
    reg q;
    
    always@(posedge clk)begin
    q <= d;
    end
    
    assign pos_edge = d & q;
    
endmodule
