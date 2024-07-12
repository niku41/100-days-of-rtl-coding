`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.07.2024 12:03:11
// Design Name: 
// Module Name: tb_parity_generator
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


module tb_parity_generator();
reg [2:0]in;
wire parity_generator;
integer i; 

parity_generator dut(in,parity_generator);

initial begin
for (i=0; i<8; i=i+1)
    begin
    {in[2], in[1], in[0]} = i;
    #100 $display ("in1 in2 in3 in4 in5 = %b, Output = %b",
    {in[0], in[1], in[2]}, parity_generator);
    end
end

endmodule
