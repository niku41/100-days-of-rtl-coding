`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.01.2024 11:10:49
// Design Name: 
// Module Name: decoder_24
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


module decoder_24(input [1:0] in, output reg [3:0] out);
  always @(*) begin
    casex(in)
      2'b00: out = 4'b0001;
      2'b01: out = 4'b0010;
      2'b10: out = 4'b0100;
      2'b11: out = 4'b1000;
    endcase
  end
endmodule



//module decoder_3to8(input [2:0] in, output reg [7:0] out);
//  always @(*) begin
//    casez(in)
//      3'b000: out = 8'b00000001;
//      3'b001: out = 8'b00000010;
//      3'b010: out = 8'b00000100;
//      3'b011: out = 8'b00001000;
//      3'b100: out = 8'b00010000;
//      3'b101: out = 8'b00100000;
//      3'b110: out = 8'b01000000;
//      3'b111: out = 8'b10000000;
//    endcase
//  end
//endmodule



//module priority_encoder_3to8(input [7:0] in, output reg [2:0] out);
//  always @(*) begin
//    out = 3'b000;  // Default output
//    casex(in)
//      8'b1XXXXXXX: out = 3'b111;
//      8'b01XXXXX: out = 3'b110;
//      8'b001XXXX: out = 3'b101;
//      8'b0001XXX: out = 3'b100;
//      8'b00001XX: out = 3'b011;
//      8'b000001X: out = 3'b010;
//      8'b0000001: out = 3'b001;
//    endcase
//  end