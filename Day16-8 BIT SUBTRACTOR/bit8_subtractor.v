`timescale 1ns / 1ps

module bit8_subtractor(
    input [7:0] a,b,
    output reg [7:0] result
    );
    
    reg [7:0] neg_b;
    always @ (a or b)begin
        neg_b = ~b + 1;
        result = a + neg_b;
    end
    
endmodule
