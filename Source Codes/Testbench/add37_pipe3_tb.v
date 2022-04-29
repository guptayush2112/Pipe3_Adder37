															   // VLSI DESIGN MINI PROJECT			
												// TESTBENCH FOR 37-BIT 3 STAGE PIPELINED ADDER
														// By: VIBHU RASTOGI [RA1911004010264]
														// 		AYUSH GUPTA	[RA1911004010265]
														// 	 AAYUSH SINHA  [RA1911004010274]
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






//	wire LSBs_Carry;
//	wire Middle_Carry;
//	wire MSBs_Carry;

//		.LSBs_Carry(LSBs_Carry), 
//		.Middle_Carry(Middle_Carry), 
//		.MSBs_Carry(MSBs_Carry), 



//		x = 37'b0000000000000000000000000000000111010;	//   58
//		y = 37'b0000000000000000000000000000001100100;  	//  100
//		#2;
//		
//		x = 0_0000_0000_0000_0000_0000_0000_0000_0000_1001; // 9
//		y = 0_0000_0000_0000_0000_0000_0000_0000_0000_1010; // 10
//		#2;
//		
//		x = 0_0000_0000_0000_0000_0000_0000_0000_0011_1010; // 58
//		y = 0_0000_0000_0000_0000_0000_0000_0000_0110_0100; // 100
//		#2;
//		
//		x = 0_0000_0000_0000_0000_0000_0000_0011_1110_1000; // 1000
//		y = 0_0000_0000_0000_0000_0000_0000_0111_1101_0000; // 2000
//		#2;
//		
//		x = 0_0000_0000_0000_0000_0000_0100_1110_0010_0000; // 20000
//		y = 0_0000_0000_0000_0000_0000_1111_1101_1110_1000; // 65000
//		#2;
//		
//		x = 0_0000_0000_0000_0000_0010_0100_1001_1111_0000; // 150000
//		y = 0_0000_0000_0000_0000_0000_0010_0111_0001_0000; //  10000
//		#2;