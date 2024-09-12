`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.03.2024 11:15:40
// Design Name: 
// Module Name: tb_bcd_down_counter
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


module tb_bcd_down_counter();
reg clk,rst,sel;
wire[3:0] q;
integer fd;
bcd_down_counter uut(.sel(sel),.clk(clk),.rst(rst),.q(q));
always
#30 clk=~clk;
initial begin
fd=$fopen("my_file_down_counter.txt","w");
$fdisplay(fd,"Displaying values of monitor");
rst=1;
clk=0;
#1 rst=0;
sel=1;
#60;
sel=1;
#100;
sel=0;
#200;
sel=1;
$fclose(fd);
$finish;
end
initial begin
$fmonitor(fd,"time=%t,q=%b,rst=%b,clk=%b",$time,q,rst,clk);
end
endmodule