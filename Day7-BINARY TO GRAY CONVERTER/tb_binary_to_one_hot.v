`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.07.2024 10:25:27
// Design Name: 
// Module Name: tb_binary_to_one_hot
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


module tb_binary_to_one_hot();
localparam BIN_W = 4;
  localparam ONE_HOT_W = 16;
  integer i;
  

  reg [BIN_W-1:0] bin_i;
  wire [ONE_HOT_W-1:0] one_hot_o;

  binary_to_one_hot dut(bin_i,one_hot_o);

  initial 
  begin
    for( i=0; i<16; i=i+1)
	begin
      bin_i = i;
      #5;
    end
	
  
  end
  
  initial
  begin
  $monitor("Binary Value: %b | One hot encoded value : %b", bin_i,one_hot_o);
  #300 $finish;
  end

endmodule