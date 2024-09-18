`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.02.2024 23:26:49
// Design Name: 
// Module Name: tb_1011
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


module tb_mealy_sequenceD();
reg clk,arstn,seq;
wire out;
//moore_1101_nonoverlapping mnsd(.clk(clk),.arstn(arstn),.seq(seq),.out(out));
moore_1101_overlapping mnsd(.clk(clk),.arstn(arstn),.seq(seq),.out(out));
always #5 clk=~clk;
initial
begin
clk=0;
seq=0;
arstn=0;
#10
arstn=1;
#10
seq=1;
#10
seq=1;
#10
seq=0;
#10
seq=1;
#10
seq=0;
#10
seq=1;
#10
seq=1;
#10
seq=0;
#10
seq=1;
#10
seq=1;
#10
seq=0;
#10
seq=1;
#100
$finish;
end
endmodule