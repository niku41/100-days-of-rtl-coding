`timescale 1ns / 1ps


//module tb_mealy_sd101();
//reg clk,arstn,data;
//wire sd;
//mealy_sd_101 inst(.clk(clk),.arstn(arstn),.data(data),.sd(sd));
//always #5 clk=~clk;
//initial
//begin
//clk=0;
//arstn=1.5;
//#5 arstn=0;
//#10 data=1;
//#10 data=0;
//#10 data=1;
//#10 data=0;
//#10 data=1;
//#10 data=0;
//#10 data=1;
//#10 data=0;
//#10 data=1;
//#10 data=0;
//#10 data=1;
//#10 data=1;
//$finish;
//end
//initial begin
//$fmonitor("time=%t,clk=%b,arstn=%b,data=%b",$time,clk,arstn,data);
//end
//endmodule


module tb_sqn_dtctor();
 reg in,arst,clk ;
wire out;
seq_det_101 SQD1(.in(in),.out(out),.clk(clk),.arst(arst));
always #5 clk=~clk;
initial
    begin
    clk=0;
    arst=0;
    #10
    arst=1;
    #10
    in=1;
     #10
    in=0;
     #10
    in=1;
     #10
    in=1;
     #10
    in=0;
     #10
    in=0;
     #10
    in=0;
     #10
    in=0;
     #10
    in=1;
     #10
    in=0;
     #10
    in=1;
     #10
    in=0;
    #300
    $finish;
    end
endmodule