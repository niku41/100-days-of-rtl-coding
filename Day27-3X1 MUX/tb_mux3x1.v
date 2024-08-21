`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.08.2024 21:40:22
// Design Name: 
// Module Name: tb_mux3x1
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


module tb_mux3x1();
reg a,b,c;
reg [1:0] sel;
wire mux_out;

mux3x1 dut(.a(a),.b(b),.c(c),.sel(sel),.mux_out(mux_out));

initial begin
a=0;b=0;c=0;sel=2'b00;
		#10 a=1;b=0;c=0;sel=2'b01;
		#10 a=1;b=1;c=0;sel=2'b10;
		#10 a=1;b=0;c=0;sel=2'b00;
		#10 a=0;b=0;c=1;sel=2'b01;
		#10 a=1;b=0;c=0;sel=2'b10;
		#10 a=0;b=1;c=0;sel=2'b00;
end

endmodule
