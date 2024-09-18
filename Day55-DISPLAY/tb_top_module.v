`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.03.2024 23:59:17
// Design Name: 
// Module Name: tb_top_module
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


module tb_top_module();
reg arst, clk;
wire  An0,An1,ca,cb,cc,cd,ce,cf,cg;

top_module dut (.arst(arst),.clk(clk),.An0(An0),.An1(An1),.ca(ca),.cb(cb),.cc(cc),.ce(ce),.cd(cd),.cf(cf),.cg(cg));
always #5 clk=~clk;
initial 
begin 
arst=1;
clk=0;
#10
arst = 0;
#90000
$finish ;
end 

endmodule
+