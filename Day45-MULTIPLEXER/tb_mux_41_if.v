`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.01.2024 16:49:32
// Design Name: 
// Module Name: tb_mux_41_if
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


module tb_mux_41_if();

  reg i0, i1, i2, i3;
  reg [1:0] sel;
  wire y;

  mux_41_if dut (.y(y), .sel(sel), .i0(i0), .i1(i1), .i2(i2), .i3(i3));

  initial begin
    // Initialize inputs
    i0 = 0;
    i1 = 1;
    i2 = 2;
    i3 = 3;
//    #10; $display("Test case 1: sel = 00 --> y = %h", sel = 2'b00, y);
//    #10; $display("Test case 2: sel = 01 --> y = %h", sel = 2'b01, y);
//    #10; $display("Test case 3: sel = 10 --> y = %h", sel = 2'b10, y);
//    #10; $display("Test case 4: sel = 11 --> y = %h", sel = 2'b11, y);
//    #10; $finish;
  end
  initial begin
    $monitor("sel = %h: i0 = %h, i1 = %h, i2 = %h, i3 = %h --> y = %h", sel, i0, i1, i2, i3, y);
  end
endmodule