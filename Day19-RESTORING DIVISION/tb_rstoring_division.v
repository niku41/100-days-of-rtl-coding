`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.07.2024 21:46:37
// Design Name: 
// Module Name: tb_rstoring_division
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


module tb_rstoring_division();
    reg [7:0] a;
    reg [3:0] b;
    wire [7:0] result;
    reg start;
    
    restoring_division dut(.a(a),.b(b),.result(result),.start(start));
    
    initial begin
    start = 0;
    #50;
    start = 1;
    a = 8'b00000000;
    b = 4'b0000;
    #50
    a = 8'b00110000;
    b = 4'b0011;
    #50
    a = 8'b11000000;
    b = 4'b1100;
    #50
    a = 8'b01000000;
    b = 4'b0100;
    #50
    a = 8'b01000000;
    b = 4'b0110;
    end
    
endmodule
