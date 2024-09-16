`timescale 1ns / 1ps


module tb_mux4x1();
reg s1, s0;
  reg i0,i1,i2,i3;
  wire y;
  
  mux_4x1 mux(y, s1, s0, i0, i1, i2, i3);
  
  initial begin
    $monitor("At time = %0t: {s1 = %b, s0 = %b} -> i3 = %0b, i2 = %0b ,i1 = %0b, i0 = %0b -> y = %0b", $time, s1,s0,i3,i2,i1,i0, y);
    {i3,i2,i1,i0} = 4'h5;
    repeat(6) begin
      {s1, s0} = $random;
      #5;
    end
    s1 = 1'bx; s0 = 1;
    #5;
    s1 = 0; s0 = 1'bx;
  end
  
endmodule
