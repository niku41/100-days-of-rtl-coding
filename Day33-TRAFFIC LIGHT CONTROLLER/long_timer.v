`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.05.2024 22:46:36
// Design Name: 
// Module Name: long_timer
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


// 4 bit timer.
module long_timer(
 input clk,
 input arst,
 input TL_start,
 output TL_out
    );
    
    reg [3:0]count;
    
    always @(posedge clk or posedge arst)
     begin
       if(arst)
        begin
          count <= 0;
        end
      else
        begin
          if(TL_start)
            begin
              count <= 0;
            end
          else 
            begin
              count <= count + 1;
            end
        end
     end
   
     assign TL_out = (count == 4'b1111);
     
endmodule
