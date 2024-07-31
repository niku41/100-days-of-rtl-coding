`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.07.2024 11:41:20
// Design Name: 
// Module Name: multiplier_4bit
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


module multiplier_4bit(
    input [3:0] a,b,
    output [7:0] product
    );
    
    wire [3:0] m0;
    wire [3:0] m1;
    wire [3:0] m2;
    wire [3:0] m3;
    
    wire [7:0] s1,s2,s3;
    
    assign m0 = {4{a[0]}} & b[3:0];
    assign m1 = {4{a[1]}} & b[3:0];
    assign m2 = {4{a[2]}} & b[3:0];
    assign m3 = {4{a[3]}} & b[3:0];
    
    assign s1 = m0 + (m1<<1);
    assign s2 = s1 + (m2<<1);
    assign s3 = s2 + (m3<<1);
    assign product = s3;
    
endmodule
