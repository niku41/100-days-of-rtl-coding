`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.01.2024 15:33:00
// Design Name: 
// Module Name: mux_41_if
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


module mux_41_if(mux_out,sel,i_0,i_1,i_2,i_3);
input i_0,i_1,i_2,i_3;
output[1:0]sel;
output reg mux_out;
always @ (*) begin
if(sel==2'b00)
mux_out=i_0;
else if(sel==2'b01)
mux_out=i_1;
else if(sel==2'b10)
mux_out=i_2;
else if(sel==2'b11)
mux_out=i_3;
end
endmodule