`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.03.2024 23:54:11
// Design Name: 
// Module Name: freq_divider
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


module freq_divider(input clk,arst,
output fdout_1,fdout_2
    );
    reg [23:0]q;
    always @(posedge clk or posedge arst)
    begin
      if(arst)
           q<=0;
      else
           q <= q+1; 
    end 
    
    assign fdout_1=q[23];
    assign fdout_2=q[17];

endmodule
