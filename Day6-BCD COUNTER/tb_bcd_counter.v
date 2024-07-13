`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.07.2024 12:29:18
// Design Name: 
// Module Name: tb_bcd_counter
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


module tb_bcd_counter();
reg clk,rst,sel;
wire[3:0] count;
integer fd;

bcd_counter dut(.sel(sel),.clk(clk),.rst(rst),.count(count));

always
#5 clk=~clk;

initial begin
fd=$fopen("my_file.txt","w");
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
$fmonitor(fd,"time=%t,count=%b,rst=%b,clk=%b",$time,count,rst,clk);
end

endmodule
