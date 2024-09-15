`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.01.2024 14:17:02
// Design Name: 
// Module Name: mux_41
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


module mux_4(in_0,in_1,in_2,in_3,sel1,sel2,mux_out);
  input in_0,in_1,in_2,in_3,sel1,sel2;
  output mux_out;
  wire w1,w2;
  mux_21 mux1(.in_0(in_0),.in_1(in_1),.sel(sel1),.mux_out(w1));
  mux_21 mux2(.in_0(in_2),.in_1(in_3),.sel(sel1),.mux_out(w2));
  mux_21 mux3(.in_0(w1),.in_1(w2),.sel(sel2),.mux_out(mux_out));
endmodule
