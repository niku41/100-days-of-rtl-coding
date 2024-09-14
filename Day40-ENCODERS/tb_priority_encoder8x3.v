`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.03.2024 17:06:17
// Design Name: 
// Module Name: tb_priority_encoder8x3
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


module tb_priority_encoder8x3();
reg [7:0]in;
reg en;
wire [2:0]out;
integer i;
priority_encoder8x3 dut(.in(in),.en(en),.out(out));
initial begin
$monitor( "en=%b, in=%d, out=%b ", en, in, out);
   en=1;
   for (i = 0; i < 8; i = i + 1) begin
        in = i;
        #10; 
    end
    in = 8'b10101010; 
    #10;
    in = 8'b11111111; 
    #10;
    in = 8'b00000000; 
    #10;
    end
endmodule
