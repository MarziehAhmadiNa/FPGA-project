`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:11:59 01/21/2018
// Design Name:   top
// Module Name:   D:/term-961/fpga-term/projects/test/TEST_top.v
// Project Name:  test
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: top
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module TEST_top;

	// Inputs
	reg clk;

	// Outputs
	wire [5:0] rgb;
	wire hsync;
	wire vsync;

	// Instantiate the Unit Under Test (UUT)
	top uut (
		.clk(clk), 
		.rgb(rgb), 
		.hsync(hsync), 
		.vsync(vsync)
	);

	initial begin
		// Initialize Inputs
		clk = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
	
	always #20.833 clk = ~clk;
      
endmodule

