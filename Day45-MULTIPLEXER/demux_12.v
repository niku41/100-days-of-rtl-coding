`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.01.2024 23:39:13
// Design Name: 
// Module Name: demux_12
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


module demux_12(in, sel, out, out1);
  input in, sel;
  output out, out1;
  assign out = ~sel & in;  
  assign out1 = sel & in;  
endmodule
