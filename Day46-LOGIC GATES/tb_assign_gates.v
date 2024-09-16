`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.01.2024 14:14:00
// Design Name: 
// Module Name: tb_assign_gates
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


module tb_assign_gates();
reg a_in, b_in;
wire and_out, or_out, xor_out, anot_out, bnot_out, nand_out, nor_out, xnor_out;
assign_gates inst1 (.a_in(a_in),
                   .b_in(b_in),
                   .and_out(and_out),
                   .or_out(or_out),
                   .xor_out(xor_out),
                   .anot_out(anot_out),
                   .bnot_out(bnot_out),
                   .nand_out(nand_out),
                   .nor_out(nor_out),
                   .xnor_out(xnor_out)
                   );
initial
    begin
        a_in = 0;
        b_in = 0;  //a=0,b=0
        #10
        b_in = 1;  //a=0,b=1
        #10
        a_in = 1;
        b_in = 0;  //a=1,b=0
        #10
        b_in = 1;  //a=1,b=1
        #10
        $finish;
    end

initial
    begin
        $monitor("T=%0t a=%0b b=%0b and_out=%0b or_out=%0b xor_out=%0b anot_out=%0b bnot_out=%0b nand_out=%0b nor_out=%0b xnor_out=%0b",$time,a_in,b_in,and_out, or_out, xor_out, anot_out, bnot_out, nand_out, nor_out, xnor_out);
    end
endmodule
