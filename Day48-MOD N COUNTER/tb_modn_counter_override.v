`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.02.2024 23:55:19
// Design Name: 
// Module Name: tb_modn_counter_override
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


module tb_modn_counter_override();
   parameter N = 6;
   parameter width = 2;
   reg clk, rst;
   wire [width-1:0] q;
   integer fd;
   modn_counter #(.N(N), .width(width)) dut(.clk(clk), .rst(rst), .q(q));
   initial begin
       fd = $fopen("my_file_modn_counter.txt", "w");
       $fdisplay(fd, "Displaying values of monitor");
       rst = 1;
       clk = 0;
       #50 rst = 0;
       #100 rst = 1;
       #150 $finish;
   end
   initial begin
       $fmonitor(fd, "time=%t,q=%b,rst=%b,clk=%b", $time, q, rst, clk);
   end
   always #10 clk = ~clk;
endmodule
module modn_counter #(parameter N = 4, parameter width = 2) (input clk, rst, output reg [width-1:0] q);
   always @(posedge clk or posedge rst) begin
       if (rst) begin
           q <= 0;
       end else begin
           q <= (q + 1) % N;
        end
   end
endmodule

