`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.07.2024 16:38:17
// Design Name: 
// Module Name: tb_moore_1010
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


module tb_moore_1010();
parameter s0=3'b000,
          s1=3'b001,
          s2=3'b010,
          s3=3'b011,
          s4=3'b100;
reg in,clk,rst;
wire out;
moore_1010 dut(.clk(clk),.rst(rst),.in(in),.out(out));
initial begin
forever #5 clk=~clk;
end
initial begin
clk=0;
rst=0;
in=0;
#10;
rst=1;
#10
in=1;
#10
in=0;
#10
in=1;
#10
in=0;
#10
in=0;
#10
in=0;
#10
in=1;
#10
in=0;
#10
in=1;
#10
in=0;
end
endmodule
