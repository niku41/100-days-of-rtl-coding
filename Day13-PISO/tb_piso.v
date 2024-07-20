`timescale 1ns / 1ps

module tb_piso();
reg [3:0]pi;
reg clk,rst,sel;
wire so;
piso dut(.clk(clk),.pi(pi),.rst(rst),.so(so),.sel(sel));
always #5 clk=~clk;
initial $monitor("clk=%b,pi=%b,rst=%b,so=%b,sel=%b",rst,pi,so,clk,sel);
initial begin
clk=0;
rst=1;
sel=0;
pi=4'b0000;
#5  rst=0;
    sel=0;
    pi=4'b0100;
#5  sel=1;
#5  sel=1;
    pi=4'b1110;
    pi=4'b1010;
    pi=4'b1000;
#5 sel=1;
end
initial #50 $finish;
endmodule
