`timescale 1ns / 1ps



module alu_tb;

	// Inputs
	reg [2:0] Ctrl;
	reg [15:0] AC;
	reg [15:0] DR;
	reg clk;

	// Outputs
	wire [15:0] ALU_out;

	// Instantiate the Unit Under Test (UUT)
	ALU uut (
		.Ctrl(Ctrl), 
		.AC(AC), 
		.DR(DR), 
		.clk(clk), 
		.ALU_out(ALU_out)
	);

	initial begin
		// Initialize Inputs
		Ctrl = 0;
		AC = 0;
		DR = 0;
		clk = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

