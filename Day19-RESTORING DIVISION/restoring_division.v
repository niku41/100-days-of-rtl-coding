`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.07.2024 21:46:00
// Design Name: 
// Module Name: restoring_division
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


module restoring_division(
    input [7:0] a,
    input [3:0] b,
    output [7:0] result,
    input start
    );
    
    wire [3:0] b_bar;
    reg [3:0] b_neg;
    reg [7:0] result;
    reg [3:0] count;
    
    assign b_bar = ~b;
    
    always @(b_bar)
        b_neg = b_bar +1;
     
    always @(posedge start)begin
        result = a;
        count = 4'b0100;
        
        if((a != 0) && (b != 0))
            while(count)begin
                result = result << 1;
                result = {(result [7:4] + b_neg),result[3:0]};
                    if(result[7] ==1)begin
                        result = {(result[7:4]+b),result[3:1],1'b0};
                        count = count - 1;
                    end 
        else begin
        result={result[7:1],1'b1};
        count=count-1;
        end
    end
    end
endmodule
