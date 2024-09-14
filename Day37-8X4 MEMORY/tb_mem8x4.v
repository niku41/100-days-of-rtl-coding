`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.03.2024 20:31:40
// Design Name: 
// Module Name: tb_mem8x4
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


module tb_mem8x4();
reg [2:0] addr;
reg [3:0] data_in;
reg wr;
wire [3:0] data_out;
mem8x4 dut (.addr(addr),.data_in(data_in),.wr(wr),.data_out(data_out));
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
