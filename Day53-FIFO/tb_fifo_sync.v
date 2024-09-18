`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.02.2024 08:55:44
// Design Name: 
// Module Name: tb_fifo_sync
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


module tb_fifo_sync #(parameter DEPTH=8, DATA_WIDTH=8);
reg clk, rst_n;
reg w_en, r_en;
reg [DATA_WIDTH-1:0] data_in;
wire [DATA_WIDTH-1:0] data_out;
wire full, empty;
parameter clock=10;
integer i;

fifo_async #(DEPTH,DATA_WIDTH) dut(.clk(clk),.rst_n(rst_n),.w_en(w_en),.r_en(r_en),.data_in(data_in),.full(full),.data_out(data_out),.empty(empty));

always #5 clk<=~clk;
 
    initial
     begin
       clk=0;
       rst_n=0;
       w_en=1;
       r_en=0;
       data_in=0;
       #10;
       rst_n = 1;
       for(i=0;i<8;i=i+1)
          begin
            #10
            data_in<= $urandom_range(0,6);
     
          end
       #10;
       //r_en=1;
          end
endmodule
