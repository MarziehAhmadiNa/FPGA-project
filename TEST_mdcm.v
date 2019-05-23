`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:52:44 01/23/2018
// Design Name:   my_dcm
// Module Name:   D:/term-961/fpga-term/projects/test/TEST_mdcm.v
// Project Name:  test
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: my_dcm
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module TEST_mdcm;

	// Inputs
	reg CLK_IN;
	reg RESET;

	// Outputs
	wire CLK_OUT1;
	wire LOCKED;

	// Instantiate the Unit Under Test (UUT)
	my_dcm uut (
		.CLK_IN(CLK_IN), 
		.CLK_OUT1(CLK_OUT1), 
		.RESET(RESET), 
		.LOCKED(LOCKED)
	);

	initial begin
		// Initialize Inputs
		CLK_IN = 0;
		RESET = 0;

		// Wait 100 ns for global reset to finish
		#100;
		RESET = 1;				
		#100;
		RESET = 0;

        
		// Add stimulus here
	end
	
	always #20.833 CLK_IN = ~CLK_IN;
      
endmodule

