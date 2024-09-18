`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.02.2024 19:26:08
// Design Name: 
// Module Name: tb_para_dual
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


module tb_para_dual #(parameter addr_width =6,data_width =8,depth = 36)();
reg clk;
reg reset;
reg [addr_width-1:0] addr_a;
reg [addr_width-1:0] addr_b;
reg [data_width-1:0] data_a;
reg [data_width-1:0] data_b;
reg wr_a;
reg wr_b;
wire [data_width-1:0] q_a;
wire [data_width-1:0] q_b;
para_dual dut (.clk(clk),.reset(reset),.addr_a(addr_a),.addr_b(addr_b),.data_a(data_a),.data_b(data_b),.wr_a(wr_a),.wr_b(wr_b),.q_a(q_a),.q_b(q_b));
always begin
    #5 clk = ~clk;
end

initial begin
    clk = 0;
    reset = 1;
    addr_a = 0;
    addr_b = 0;
    data_a = 0;
    data_b = 0;
    wr_a = 0;
    wr_b = 0;
    #100; 
    reset = 0;
    #100;
    
    addr_a = 5;
    addr_b = 10;
    data_a = 8'hAB;
    data_b = 8'h44;
    wr_a = 1;
    wr_b = 1;
    #100; 
    
    addr_a = 5;
    addr_b = 10;
    data_a = 8'hCC;
    data_b = 8'h28;
    wr_a = 1;
    wr_b = 1;
    #100;
    
    addr_a = 5;
    addr_b = 10;
    wr_a = 0;
    wr_b = 0;
    #100; 
    $finish; 
end

endmodule

