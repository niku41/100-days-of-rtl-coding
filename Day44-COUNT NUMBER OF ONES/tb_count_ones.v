`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.03.2024 10:25:36
// Design Name: 
// Module Name: tb_count_ones
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


module tb_count_ones();
reg [7:0] in;
wire [3:0] count;
count_ones dut(.in(in),.count(count));
task t();
begin
repeat(10) begin
in=$random;
#10;
end
end
endtask
 initial 
 begin
 in = 0;
 #10
 t();
 #10
 $finish;
 end
 initial 
 
 begin 
 $dumpvars()
 end
endmodule
