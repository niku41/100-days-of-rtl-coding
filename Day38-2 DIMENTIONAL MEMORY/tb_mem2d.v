`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.03.2024 20:31:55
// Design Name: 
// Module Name: tb_mem2d
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


module tb_mem2d();
reg [5:0] addr_x;
reg [4:0] addr_y;
reg [7:0] data_in;
reg wr;
wire [7:0] data_out;
mem2d dut (.addr_x(addr_x),.addr_y(addr_y),.data_in(data_in),.wr(wr),.data_out(data_out));
     reg clk = 0;
    always #5 clk = ~clk;
    initial begin
        addr_x = 6'b000000;
        addr_y = 5'b00000;
        data_in = 8'b00000000;
        wr = 0;
        #10;
        wr = 1;
        data_in = 8'b10101010;
        addr_x = 6'b001010;
        addr_y = 5'b00101;
        #10;
        wr = 0;
        #10;
        addr_x = 6'b001010;
        addr_y = 5'b00101;
        wr = 0;
        #10;
        $finish;
    end
endmodule
