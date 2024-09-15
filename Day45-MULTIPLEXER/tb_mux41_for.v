`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.01.2024 15:12:01
// Design Name: 
// Module Name: tb_mux41_for
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


module tb_mux41_for();

  reg in_0, in_1, in_2, in_3, sel1, sel2;
  wire mux_out;

  mux_4 dut(.in_0(in_0), .in_1(in_1), .in_2(in_2), .in_3(in_3), .sel1(sel1), .sel2(sel2), .mux_out(mux_out));

  initial begin
    for (int i = 0; i < 16; i++) 
    begin
      {sel1, sel2} = i[1:0]; // Assign sel1 and sel2 from bits 1 and 0 of i
      {in_0, in_1, in_2, in_3} = i[3:0]; // Assign inputs from bits 3 to 0 of i
      #10;
    end
    $finish;
  end

  initial begin
    $monitor("sel1 = %b, sel2 = %b, in_0 = %b, in_1 = %b, in_2 = %b, in_3 = %b --> mux_out = %b",
             sel1, sel2, in_0, in_1, in_2, in_3, mux_out);
  end

endmodule

