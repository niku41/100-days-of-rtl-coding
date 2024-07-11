`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.07.2024 08:54:43
// Design Name: 
// Module Name: tb_5_bit_majority_circuit
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


module tb_5_bit_majority_circuit();
reg [4:0] in;
wire out;
integer i;

//instantiate the module into the test bench
bit5_majority_circuit dut(in,out);

//Apply input vectors
initial
begin
for (i=0; i<32; i=i+1)
    begin
    {in[4], in[3], in[2], in[1], in[0]} = i;
    #10 $display ("in1 in2 in3 in4 in5 = %b, Output = %b",
    {in[0], in[1], in[2], in[3], in[4]}, out);
    end
end

endmodule
