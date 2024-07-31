`timescale 1ns / 1ps

module tb_bit8_subtractor();
    reg [7:0] a, b; //inputs are reg for test bench
    wire [7:0] result; //outputs are wire for test bench

    //instantiate the module into the test bench
    bit8_subtractor dut(a,b,result);
    
    //apply input vectors
    initial
    begin
        #0 a = 8'b0000_0011; b = 8'b0000_0001; //3-1 = 2
        #50 a = 8'b0000_0100; b = 8'b0000_0011; //4-3 = 1
        #50 a = 8'b0000_0110; b = 8'b0000_0011; //6-3 = 3
        #50 a = 8'b0000_1110; b = 8'b0000_0111; //14-7 = 7
end

endmodule
