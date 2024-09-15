`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.01.2024 23:55:45
// Design Name: 
// Module Name: tb_demux_12
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


module tb_demux_12;
reg in, sel;
  wire out, out1;
   demux_12 demux (.in(in), .sel(sel), .out(out), .out1(out1));
  initial begin
    sel = 0;
    #10;
    in = 1;
    sel = 0;
    #10;
    in = 0;
    sel = 1;
    #10;
    sel = 1;
    #10;
    $finish;
    end
    initial
    begin
    $monitor("Time=%0t in=%b sel=%b out=%b out1=%b", $time, in, sel, out, out1);
  end
endmodule
