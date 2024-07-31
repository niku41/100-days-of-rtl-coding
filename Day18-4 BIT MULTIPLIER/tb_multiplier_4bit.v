`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.07.2024 11:42:14
// Design Name: 
// Module Name: tb_multiplier_4bit
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


module tb_multiplier_4bit();
reg [3:0] a,b;
wire [7:0] product;

multiplier_4bit dut(.a(a),.b(b),.product(product));

initial begin
a = 4'b0000;
b = 4'b0000;
#50
a = 4'b1100;
b = 4'b1100;
#50
a = 4'b0100;
b = 4'b0100;
#50
a = 4'b0110;
b = 4'b0110;
#50
a = 4'b0001;
b = 4'b0011;
#50
a = 4'b1111;
b = 4'b0110;
#50
a = 4'b0110;
b = 4'b0001;
end

endmodule
