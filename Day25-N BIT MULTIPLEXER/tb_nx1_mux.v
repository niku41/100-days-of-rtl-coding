`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.08.2024 20:43:44
// Design Name: 
// Module Name: tb_nx1_mux
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


module tb_nx1_mux();
parameter n=16;
reg [n-1:0]in;
reg [3:0] sel;
wire  mux_out;

nx1_mux dut(.in(in),.sel(sel),.mux_out(mux_out));

initial begin
#10 in=16'b0000001000000000; sel=4'b0110;

#10 in=16'b0000000111100000; sel=4'b0111;

#10 in=16'b0000000010000000; sel=4'b1000;

#10 in=16'b0000000001000000; sel=4'b1001;

#10 in=16'b0000011000100000; sel=4'b1010; 

#10 in=16'b0000000000010000; sel=4'b1011;

#10 in=16'b0000000000001000; sel=4'b1100; 

#10 in=16'b0000000000000100; sel=4'b1101; 

#10 in=16'b0000000000000010; sel=4'b1110; 

#10 in=16'b1000000000000001; sel=4'b1111;
end

endmodule
