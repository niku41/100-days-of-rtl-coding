`timescale 1ns / 1ps

module tb_bidirectional_shift_reg();
parameter MSB = 4;        // [Optional] Declare a parameter to represent number of bits in shift register

   reg data;                  // Declare a variable to drive d-input of design
   reg clk;                   // Declare a variable to drive clock to the design
   reg en;                    // Declare a variable to drive enable to the design
   reg dir;                   // Declare a variable to drive direction of shift registe
   reg rst;                  // Declare a variable to drive reset to the design
   wire [MSB-1:0] out;        // Declare a wire to capture output from the design

   // Instantiate design (16-bit shift register) by passing MSB and connect with TB signals
   bidirectional_shift_reg  #(MSB) sr0  (.d (data),
                             .clk (clk),
                             .en (en),
                             .dir (dir),
                             .rst (rst),
                             .out (out));

   // Generate clock time period = 20ns, freq => 50MHz
   always #10 clk = ~clk;

   // Initialize variables to default values at time 0
   initial begin
      clk <= 0;
      en <= 0;
      dir <= 0;
      rst <= 0;
      data <= 'h1;
   end

   // Drive main stimulus to the design to verify if this works
   initial begin
   
      // 1. Apply reset and deassert reset after some time
      rst <= 0;
      #20 rst <= 1;
          en <= 1;
          
	  // 2. For 7 clocks, drive alternate values to data pin
      repeat (7) @ (posedge clk)
         data <= ~data;
   
     // 4. Shift direction and drive alternate value to data pin for another 7 clocks
      #10 dir <= 1;
      repeat (7) @ (posedge clk)
         data <= ~data;

      // 5. Drive nothing for next 7 clocks, allow shift register to simply shift based on dir
      repeat (7) @ (posedge clk);
      
      // 6. Finish the simulation
       #300 $finish;
   end

   // Monitor values of these variables and print them into the logfile for debug
   initial
      $monitor ("rst=%0b data=%b, en=%0b, dir=%0b, out=%b", rst, data, en, dir, out);
endmodule
