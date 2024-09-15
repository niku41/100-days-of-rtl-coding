`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.01.2024 17:00:23
// Design Name: 
// Module Name: tb_mux_21
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


module tb_mux_21();
  reg in_0, in_1, sel;
  wire mux_out;
  mux_21 inst (.mux_out(mux_out),.sel(sel),.in_0(in_0),.in_1(in_1));
  initial begin
    in_0 = 0;
    in_1 = 1;
    sel = 0;
    #10;
    in_0 = 1;
    in_1 = 0;
    sel = 0;
    #10;
    $display("simulation over!!");
    $finish;
  end

  initial begin
    $monitor("sel = %h: in_0 = %h, in_1 = %h --> mux_out = %h", sel, in_0, in_1, mux_out);
  end
endmodule



