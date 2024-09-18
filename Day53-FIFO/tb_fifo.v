`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.02.2024 10:21:41
// Design Name: 
// Module Name: tb_fifo
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


module tb_fifo();
reg clk;
reg rst,ren,wen;
reg [7:0]d_in;
wire [7:0]d_out;
wire empty,full;
fifo F1(.empty(empty),.full(full),.r_en(ren),.w_en(wen),.d_in(d_in),.d_out(d_out),
         .clk(clk),.rst(rst));
         
always #5 clk=~clk;
    
initial
    begin
    clk=0;
    rst=1;
    #10
    rst=0;
    ren=0;
    wen=1;
    d_in=8'b00001111;
    #10
    d_in=8'b00001001;
    #10
    d_in=8'b00000111;
    #10
    d_in=8'b00100001;
    #10
    d_in=8'b00001100;
    #10
    d_in=8'b00001001;
    #10
    d_in=8'b00001110;
    #10
    d_in=8'b00001011;
    #10
    d_in=8'b00111111;
    #10
    d_in=8'b00010111;
    #10
    d_in=8'b00001111;
    #10
    d_in=8'b00001001;
    #10
    d_in=8'b00000111;
    #10
    d_in=8'b00100001;
    #10
    d_in=8'b00001100;
    #10
    d_in=8'b00001001;
    #10
    d_in=8'b00001100;
    #10
    d_in=8'b00011100;
    #10
    ren=1;
    wen=0;
    #200
    $finish;
    end
endmodule