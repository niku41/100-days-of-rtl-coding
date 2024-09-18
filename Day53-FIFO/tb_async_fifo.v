`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.03.2024 00:02:37
// Design Name: 
// Module Name: tb_async_fifo
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


module tb_async_fifo #(parameter DEPTH=8, DATA_WIDTH=8);
reg wr_clk,rd_clk,rst;
reg wr_en,rd_en;
reg [DATA_WIDTH-1:0] data_in;
wire [DATA_WIDTH-1:0] data_out;
wire full, empty;
parameter clock=10;
integer i,j;

fifo_async #(DEPTH,DATA_WIDTH) dut(.rd_clk(rd_clk),.wr_clk(wr_clk),.rst(rst),.wr_en(wr_en),.rd_en(rd_en),.data_in(data_in),.full(full),.data_out(data_out),.empty(empty));

always #5 wr_clk<=~wr_clk;
always #5 rd_clk<=~rd_clk;
    initial
     begin
       wr_clk=0;
       rst=0;
       wr_en=1;
       rd_en=0;
       data_in=0;
       #10;
       rst= 1;
       for(i=0;i<8;i=i+1)
          begin
            #10
            data_in<= $urandom_range(0,6);
     
          end
       #10;
       //r_en=1;
          end
          initial
     begin
       rd_clk=0;
       rst=0;
//       wr_en=1;
       rd_en=0;
       data_in=0;
       #10;
       rst= 1;
       for(j=0;j<8;j=j+1)
          begin
            #10
            data_in<= $urandom_range(0,6);
     
          end
       #10;
       rd_en=1;
          end
endmodule