`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.08.2024 21:42:55
// Design Name: 
// Module Name: bcd_7seg
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


module bcd_7seg(
    input [3:0] bcd,
    output reg [7:0] display
    );
    
    always@* begin
        case(bcd)
        0 : display = 7'b1111110;
            1 : display = 7'b0110000;
            2 : display = 7'b1101101;
            3 : display = 7'b1111001;
            4 : display = 7'b0110011;
            5 : display = 7'b1011011;
            6 : display = 7'b1011111;
            7 : display = 7'b1110000;
            8 : display = 7'b1111111;
            9 : display = 7'b1111011;
            //switch off 7 display character when the bcd digit is not a decimal number.
            default : display = 7'b000000;
        endcase
    end
    
endmodule
