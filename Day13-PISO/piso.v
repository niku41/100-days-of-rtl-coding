`timescale 1ns / 1ps

module piso(
    input clk,rst,
    input [3:0]pi,
    output so,
    input sel
);
reg[3:0]data;
always @(posedge clk, posedge rst)
begin 
   if(rst==1)//loading 
    data<=4'b0000;
   else if (sel==0)
   data<=pi;
    else
    begin//shifting
    data[3]<=1'bx;
    data[2]<=data[3];
    data[1]<=data[2];
    data[0]<=data[1];
//    so=data[0];
//    data<=data>>1;
    end
end
    assign so=data[0];
endmodule