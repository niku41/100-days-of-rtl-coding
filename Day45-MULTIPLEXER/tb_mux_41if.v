`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.01.2024 22:37:03
// Design Name: 
// Module Name: tb_mux_41if
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


module tb_mux_41if();
reg i0, i1, i2, i3;  // Input signals
reg [1:0] sel;       // Select signal
wire y;              // Output signal
mux_41_if DUT (
    .y(y),
    .sel(sel), // Directly connect testbench sel signal
    .i0(i0),
    .i1(i1),
    .i2(i2),
    .i3(i3)
);

initial begin
    #10;
    sel = 2'b00;
    i0 = 0; i1 = 1; i2 = 0; i3 = 1;
    #10;
    sel = 2'b01;  // Added test case for sel = 01
    #10;
    sel = 2'b10;
    #10;
    sel = 2'b11;
    #10;
    $finish;
end
initial
    begin
        $monitor("T=%0t i0=%0b i1=%0b i2=%0b i3=%0b sel=%0b y=%0b",$time,i0,i1,i2,i3,sel,y);
    end
endmodule
