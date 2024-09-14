`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.03.2024 15:41:03
// Design Name: 
// Module Name: tb_decoder2x4
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


module tb_decoder2x4();
wire [4:0] out;
reg en;
reg [1:0] in;
integer i;

decoder2x4 dut(.in(in),.out(out),.en(en));

initial begin  
 $monitor( "en=%b, in=%d, out=%b ", en, in, out);
   for ( i=0; i<16; i=i+1) 
        begin
           {en,in}  = i;
            #10;
        end
end
endmodule
