`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.01.2024 00:14:21
// Design Name: 
// Module Name: tb_mux_41_case
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


module tb_mux_41_case();
reg i0, sel;
  wire y;
  mux_41_case mux41 (.y(y), .i0(i0), .i1(i1), .i2(i2), .i3(i3), .sel(sel));
  initial
   begin
    i0 = 1; 
    i1 = 0; 
    i2 = 0; 
    i3 = 0; 
    sel = 2'b00; #10;  
    
    i0 = 0; i1 = 1; i2 = 0; i3 = 0; sel = 2'b01; #10;  
    $finish;
  end
initial
begin 
$monitor("Time=%0t sel=%b y=%b", $time, sel, y);
end
endmodule
