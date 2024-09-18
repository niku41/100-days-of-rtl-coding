`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.03.2024 23:53:15
// Design Name: 
// Module Name: display
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


module display(in,ca,cb,cc,ce,cd,cf,cg);
input [3:0] in;
output reg ca,cb,cc,ce,cd,cf,cg;
always @(*)
    begin
        case(in)
            4'd0 : {ca,cb,cc,cd,ce,cf,cg} = 7'b0000001;
            4'd1 : {ca,cb,cc,cd,ce,cf,cg} = 7'b1001111;
            4'd2 : {ca,cb,cc,cd,ce,cf,cg} = 7'b0010010;
            4'd3 : {ca,cb,cc,cd,ce,cf,cg }= 7'b0000110;
            4'd4 : {ca,cb,cc,cd,ce,cf,cg} = 7'b1001100;
            4'd5 : {ca,cb,cc,cd,ce,cf,cg} = 7'b0100100;
            4'd6 : {ca,cb,cc,cd,ce,cf,cg} = 7'b0100000;
            4'd7 : {ca,cb,cc,cd,ce,cf,cg} = 7'b0001111;
            4'd8 : {ca,cb,cc,cd,ce,cf,cg} = 7'b0000000;
            4'd9 : {ca,cb,cc,cd,ce,cf,cg} = 7'b0000100;
            default:{ca,cb,cc,cd,ce,cf,cg} = 7'b1111111;   
        endcase
        end   
  
endmodule