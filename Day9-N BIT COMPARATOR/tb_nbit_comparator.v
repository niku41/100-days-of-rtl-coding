`timescale 1ns / 1ps

module tb_nbit_comparator();
    reg [31:0] a;
	reg [31:0] b;

	// Outputs
	wire lesser;
	wire greater;
	wire equal;

	// Instantiate the Unit Under Test (UUT)
	nbit_comparator dut (
		.a(a), 
		.b(b), 
		.lesser(lesser), 
		.greater(greater), 
		.equal(equal)
	);
initial begin
	$monitor("    A=%d    B=%d   lesser=%b     greater=%b    equal=%b   ",a,b,lesser,greater,equal);
	end

	initial begin
	   a = 2;b = 2;
		#100 a=22;b=444;
		#100 a=444;b=555;
		#100 a=777;b=111;
		#100 a=8888;b=8888;
		#500 $finish;
        

	end
endmodule
