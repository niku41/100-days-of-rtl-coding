`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.02.2024 09:31:40
// Design Name: 
// Module Name: tb_GCD
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


module tb_GCD();
reg [15:0] data_in;
reg clk,start;
wire done;

reg[15:0] A,B;

GCD_datapath DP(gt,lt,eq,ldA,ldB,sel1,sel2,sel_in,data_in,clk);
GCD_controller CON(ldA,ldB,sel1,sel2,sel_in,done,clk,lt,gt,eq,start);

initial
   begin
     clk=1'b0;
     #3 start=1'b1;
     #1000 $finish;
    end
always #5 clk=~clk;
initial
   begin 
    #12 data_in=143;
    #10 data_in=78;
   end
initial 
  begin  
     $monitor($time,"%d %b", DP.Aout, done);
     $dumpfile("gcd.vcd");
     $dumpvarse(0,tb_GCD);
   end

endmodule