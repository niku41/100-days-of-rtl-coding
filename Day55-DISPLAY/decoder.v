`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.03.2024 23:50:32
// Design Name: 
// Module Name: decoder
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


module decoder(
input  [3:0]in ,
output reg [3:0]a,b
    );
    always@*
    case (in)
    4'b0000 : {a,b}='d00;
    4'b0001 : {a,b}='d01;
    4'b0010 : {a,b}='d02;
    4'b0011 : {a,b}='d03;
    4'b0100 : {a,b}='d04;
    4'b0101 : {a,b}='d05;
    4'b0110 : {a,b}='d06;
    4'b0111 : {a,b}='d07;
    4'b1000 : {a,b}='d08;
    4'b1001 : {a,b}='d09;       
    4'b1010 : {a,b}='d10;       
    4'b1011 : {a,b}='d11;       
    4'b1100 : {a,b}='d12;       
    4'b1101 : {a,b}='d13;       
    4'b1110 : {a,b}='d14;   
    4'b1111 : {a,b}='d15;   
    endcase 
endmodule