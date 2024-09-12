`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.03.2024 11:12:28
// Design Name: 
// Module Name: bcd_down_counter
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


module bcd_down_counter(input clk,
    input rst,sel,
    output reg [3:0]q
);
always @(posedge clk or posedge rst) begin
    if (rst) begin
        q=4'b0000;
    end else 
        q=(q-1);
       if(q==4'b1001) begin
       q=4'b0000;
       end
end
endmodule