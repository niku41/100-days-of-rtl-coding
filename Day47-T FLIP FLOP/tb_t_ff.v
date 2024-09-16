`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.01.2024 15:05:54
// Design Name: 
// Module Name: tb_t_ff
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


module tb_t_ff();
 reg clk;   
  reg t;  
  wire q;
  reg rstn;
  t_ff u0(.t(t),.clk(clk),.rstn(rstn),.q(q));
initial begin
  clk=0;
     forever #10 clk = ~clk;  
end 
initial begin 
 rstn=0;
 t<=0;
 #50;
 rstn=1;
 t<=1;
 #50;
 t<=0;
 #50;
 t<=1;
end 
endmodule  