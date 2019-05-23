`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:23:35 12/25/2017 
// Design Name: 
// Module Name:    vga_monitor 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module vga_monitor
	(
		input clk,
		input [7:0] len,
		output [8:0] address,
		output hsync, vsync,
		output reg [5:0] rgb
	);
	
	// register for Basys 2 8-bit RGB DAC 
		reg [5:0] rgb_reg;
	
	// video status output from vga_sync to tell when to route out rgb signal to DAC
		wire video_on;
		//reg [6:0] color1=0 , color2 =0;
        // instantiate vga_sync
     
									  
		wire [10:0] px,py;

// Instantiate the module
		vga_sync v1 (
			.clk(clk), 
			.pixel_x(px), 
			.pixel_y(py), 
			.videoon(video_on), 
			.h_synq(hsync), 
			.v_synq(vsync)
		);		
		
		
		assign address = (px >= 64) ? (px-64) : 0;
     
      always @(posedge clk)
		begin
			  if (video_on)
			  begin
					if(py > 449 || px < 64)
						rgb <= 6'b111111;
					else if(py == 449 || px == 64)
						rgb <= 6'b000000;
					else if(px > 576)
						rgb <= 6'b111111;
					else if (py > 449 - (len))
						rgb <= 6'b100101;
					else
							rgb <= 6'b111111;
				end	
			  else
				  rgb  <= 6'b000000;
			end
endmodule
