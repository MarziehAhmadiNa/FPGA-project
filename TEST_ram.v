`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:58:10 01/23/2018
// Design Name:   ram
// Module Name:   C:/Users/zahra/ram/tb.v
// Project Name:  ram
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ram
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb;

	// Inputs
	reg clka;
	reg [0:0] wea;
	reg [8:0] addra;
	reg [7:0] dina;
	reg clkb;
	reg [0:0] web;
	reg [8:0] addrb;
	reg [7:0] dinb;

	// Outputs
	wire [7:0] douta;
	wire [7:0] doutb;

	// Instantiate the Unit Under Test (UUT)
	ram uut (
		.clka(clka), 
		.wea(wea), 
		.addra(addra), 
		.dina(dina), 
		.douta(douta), 
		.clkb(clkb), 
		.web(web), 
		.addrb(addrb), 
		.dinb(dinb), 
		.doutb(doutb)
	);

	initial begin
		// Initialize Inputs
		clka = 0;
		wea = 0;
		addra = 0;
		dina = 0;
		clkb = 0;
		web = 0;
		addrb = 0;
		dinb = 0;

		// Wait 100 ns for global reset to finish
	//	#100;
        
		// Add stimulus here

	end
      
		always @(posedge clka)
				addra <= addra + 1;
			
			
		always #10 clka = ~clka;
		
endmodule

