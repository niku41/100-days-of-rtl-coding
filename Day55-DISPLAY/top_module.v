`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.03.2024 23:53:53
// Design Name: 
// Module Name: top_module
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


module top_module(input arst, clk,
output An0,An1,ca,cb,cc,cd,ce,cf,cg);

wire [3:0] ain , bin;
wire [3:0] mux_out ;

wire [3:0]counter_w1;
wire clock_wire; 

 counter_module counter_inst_1(.clk(clk),.second_freqn_divider(clock_wire), .arst(arst),.counter_out(counter_w1));
 
 decoder decod_inst_2(.in(counter_w1) ,.a(ain),.b(bin));
 
 assign  mux_out = clock_wire ? ain : bin;

display sev_seg_inst_3(.in(mux_out),.ca(ca),.cb(cb),.cc(cc),.ce(ce),.cd(cd),.cf(cf),.cg(cg));

assign An0 = clock_wire;
assign An1 = ~clock_wire;

endmodule
