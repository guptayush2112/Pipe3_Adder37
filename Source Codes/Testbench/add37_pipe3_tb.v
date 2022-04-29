// TESTBENCH FOR 37-BIT 3 STAGE PIPELINED ADDER
`timescale 1ns / 1ps
module add37_pipe3_tb;

	// Inputs
	reg [36:0] x;
	reg [36:0] y;
	reg clk;

	// Outputs
	wire [36:0] sum;

	// Instantiate the Unit Under Test (UUT)
	add37_pipe3 uut (
		.x(x), 
		.y(y), 
		.sum(sum), 
		.clk(clk)
	);

	initial begin
		// Initialize Inputs
		x = 0;
		y = 0;
		clk = 0;

		// Wait 15 ns for global reset to finish
		#15;
		x = 37'd58;
		y = 37'd100;
		#10;
		
		x = 37'd580;
		y = 37'd60000;
		#10;
		
		x = 37'd500000000;
		y = 37'd55000;
		#10;
		
		x = 37'd1000000000;
		y = 37'd1600000000;
		#10;
		
		x = 37'd8000;
		y = 37'd100;
		#10;
		
		x = 37'd880000;
		y = 37'd4400;
		#10;
		
		x = 37'd55;
		y = 37'd10;
		#10;
		
		x = 37'd35;
		y = 37'd65;
		#10;			
	end
always #5 clk = ~clk;
initial #135 $finish;
endmodule
