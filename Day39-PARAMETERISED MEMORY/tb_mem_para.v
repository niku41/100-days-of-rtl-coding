`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.03.2024 20:32:09
// Design Name: 
// Module Name: tb_mem_para
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


module tb_mem_para();
parameter ADDR_WIDTH = 3;
parameter DATA_WIDTH = 4;
parameter DEPTH = 8;
reg [ADDR_WIDTH-1:0] addr;
reg [DATA_WIDTH-1:0] data_in;
reg wr;
wire [DATA_WIDTH-1:0] data_out;
mem_para #(.ADDR_WIDTH(ADDR_WIDTH),.DATA_WIDTH(DATA_WIDTH),.DEPTH(DEPTH)) dut (.addr(addr),.data_in(data_in),.wr(wr),.data_out(data_out));
    reg clk = 0;
    always #5 clk = ~clk;
    initial begin
        addr = 0;
        data_in = 4'b0000;
        wr = 0;
        #10;
        wr = 1;
        data_in = 4'b1010;
        addr = 3;
        #10;
        wr = 0;
        #10;
        addr = 3;
        wr = 0;
        #10;
        $finish;
    end
endmodule
