`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.07.2024 12:28:50
// Design Name: 
// Module Name: bcd_counter
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


module bcd_counter(input clk,
    input rst,sel,
    output reg [3:0]count
);
always @(posedge clk or posedge rst) begin
    if (rst) begin
    count = 4'b0000;
    end else if(sel) begin
        count = (count+1);
       if(count == 4'b1001) begin
       count = 4'b0000;
       end
        end
        else if(sel) begin
        count = (count-1);
       if(count == 4'b1001) begin
       count = 4'b0000;
       end
    end
end
endmodule