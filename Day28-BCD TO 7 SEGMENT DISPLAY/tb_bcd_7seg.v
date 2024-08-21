`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.08.2024 21:43:19
// Design Name: 
// Module Name: tb_bcd_7seg
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


module tb_bcd_7seg();
reg [3:0] bcd;
wire [7:0] display;

bcd_7seg dut(.bcd(bcd),.display(display));

initial begin
bcd = 1;
#10;
bcd = 2;
#10;
bcd = 4;
#10;
bcd = 6;
#10;
bcd = 3;
#10;
bcd = 5;
#10;
bcd = 7;
#10;
end

endmodule
