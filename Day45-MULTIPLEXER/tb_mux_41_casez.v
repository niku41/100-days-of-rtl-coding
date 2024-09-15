`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.01.2024 15:50:22
// Design Name: 
// Module Name: tb_mux_41_casez
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


module tb_mux_41_casez(); 
reg [1:0] sel;
reg a0, a1, a2, a3;
wire [2:0] out;
    initial begin
    #20 sel = 3'b001;
	#20 sel = 3'b010;
	#20 sel = 3'b011;
	#20 sel = 3'b100;
	#20 sel = 3'b101;  
	#20 sel = 3'b110;
	#20 sel = 3'b111;
	#40 ;
	end  
		initial begin
		 $monitor("t=%3d sel=%4b,out=%3b",$time,sel,out);
		 end
endmodule
