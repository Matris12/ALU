`timescale 1ns / 1ps
module ALU(
    input cin,
    input [2:0] Ctrl,
    input [15:0] AC,DR,
	 input [7:0] IP,
    output reg [15:0] ALU_out,
	 output reg cout
    );
   
always @ (Ctrl)
   
begin
     case(Ctrl)
       3'b000: {cout,ALU_out} <= AC + DR;
       3'b001: ALU_out <= AC & DR;
		 3'b010: ALU_out <= ~AC;
       3'b011: {cout,ALU_out} <= AC + 1;
		 3'b100: {cout,ALU_out} <= AC - 1;
		 3'b101: ALU_out <= IP;
		 3'b111: ALU_out <= {15'b000000000000000,cin};

     endcase
    
end


endmodule
