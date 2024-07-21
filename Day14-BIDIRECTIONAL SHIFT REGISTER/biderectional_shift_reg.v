`timescale 1ns / 1ps

module bidirectional_shift_reg#(parameter MSB=4) (input d,                      // Declare input for data to the first flop in the shift register
                                        input clk,                    // Declare input for clock to all flops in the shift register
                                        input en,                     // Declare input for enable to switch the shift register on/off
                                        input dir,                    // Declare input to shift in either left or right direction
                                        input rst,                   // Declare input to reset the register to a default value
                                        output reg [MSB-1:0] out);    // Declare output to read out the current value of all flops in this register
   reg [3:0] temp;
   always @ (posedge clk)
      if (!rst)
         out <= 0;
      else begin
         if (en)
            case (dir)
    0 : begin
        temp = out << 1;  // Shift left by 1
        temp[0] = d;      // Set LSB to 'd'
        out <= temp;
    end
    1 : begin
        temp = out >> 1;  // Shift right by 1
        temp[3] = d;      // Set MSB to 'd'
        out <= temp;
    end
endcase
         else
            out <= out;
      end
endmodule