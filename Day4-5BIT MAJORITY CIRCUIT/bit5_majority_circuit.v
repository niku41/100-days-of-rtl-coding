`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.07.2024 09:40:04
// Design Name: 
// Module Name: bit5_majority_circuit
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


module bit5_majority_circuit(
    input [4:0] in,
    output out
    );
    wire [9:0]w;
    //gate instance
    and and1(w[0],in[3],in[4],in[5]);
    and and2(w[1],in[2],in[4],in[5]);
    and and3(w[2],in[2],in[3],in[5]);
    and and4(w[3],in[2],in[4],in[3]);
    and and5(w[4],in[1],in[4],in[5]);
    and and6(w[5],in[1],in[3],in[5]);
    and and7(w[6],in[1],in[4],in[3]);
    and and8(w[7],in[2],in[1],in[5]);
    and and9(w[8],in[2],in[4],in[1]);
    and and10(w[9],in[2],in[1],in[3]);

    or or1(out,w[0],w[1],w[2],w[3],w[4],w[5],w[6],w[7],w[8],w[9]);

endmodule
