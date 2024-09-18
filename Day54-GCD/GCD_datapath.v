`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.02.2024 09:36:33
// Design Name: 
// Module Name: GCD_datapath
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


module GCD_datapath(
input ldA, ldB,sel1,sel2,sel_in,clk,
input [15:0] data_in,
output gt,lt,eq
 );
 wire [15:0]Aout,Bout,X,Y,Bus,Subout;
 
 pipo A(Aout,Bus,ldA,clk);
 pipo B(Bout,Bus,ldB,clk);
 mux_in1 mux1(X,Aout,Bout,sel1);
 mux_in2 mux2(Y,Aout,Bout,sel2);
 mux_load mux3(Bus,Subout,data_in,sel_in);
 sub SB(Subout,X,Y);
 compare COMP(lt,gt,Aout,Bout);
endmodule

