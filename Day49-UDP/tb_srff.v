`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.03.2024 01:48:28
// Design Name: 
// Module Name: tb_srff
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


module tb_srff();
reg s,r;
wire q;
srff_udp dut(.q(q),.s(s),.r(r)); 
//initial begin
//  clk=0;
//     forever #10 clk = ~clk;  
//end 
initial begin 
 s= 1; r= 0;
 #100; s= 0; r= 1; 
 #100; s= 0; r= 0; 
 #100;  s= 1; r=1; 
end 
endmodule
