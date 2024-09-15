`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.01.2024 15:39:38
// Design Name: 
// Module Name: tb_mux_41
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


module tb_mux_41();
  reg in_0,in_1,in_2,in_3,sel1,sel2;
  wire mux_out;
  mux_4 dut(.in_0(in_0),.in_1(in_1),.in_2(in_2),.in_3(in_3),.sel1(sel1),.sel2(sel2),.mux_out(mux_out));
  initial begin
    sel1=1'b0;
    sel2=1'b0;
    in_0=1'b1;
    in_1=1'b0;
    in_2=1'b0;
    in_3=1'b0; 
    #10; 
    sel1=1'b0;
    sel2=1'b1;
    in_0=1'b0;
    in_1=1'b1;
    in_2=1'b0;
    in_3=1'b0; 
    #10;
    sel1=1'b1;
    sel2=1'b0; 
    in_0=1'b0; 
    in_1=1'b0; 
    in_2=1'b1; 
    in_3=1'b0; 
    #10; 
    sel1=1'b1; 
    sel2=1'b1; 
    in_0=1'b0; 
    in_1=1'b0; 
    in_2=1'b0; 
    in_3=1'b1; 
    #10; 
    $finish;
  end
  initial begin
    $monitor("sel1 = %b, sel2 = %b, in_0 = %b, in_1 = %b, in_2 = %b, in_3 = %b --> mux_out = %b",
             sel1, sel2, in_0, in_1, in_2, in_3, mux_out);
  end
endmodule