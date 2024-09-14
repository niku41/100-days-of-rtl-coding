`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.03.2024 15:24:57
// Design Name: 
// Module Name: tb_decoder3x8
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


module tb_decoder3x8();
wire [7:0] out;
reg en;
reg [2:0] in;
integer i;

decoder3x8 dut(.in(in),.out(out),.en(en));

initial begin  
 $monitor( "en=%b, in=%d, out=%b ", en, in, out);
   for ( i=0; i<16; i=i+1) 
        begin
           {en,in}  = i;
            #10;
        end
end
endmodule
