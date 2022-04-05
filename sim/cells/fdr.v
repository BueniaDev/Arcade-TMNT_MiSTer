`timescale 1ns/100ps

module FDR(
	input CK,
	input [3:0] D,
	input nCL,
	output reg [3:0] Q = 4'd0
);

	always @(posedge CK, negedge nCL)
	begin
		if (!nCL)
			Q <= #1 4'd0;
		else
			Q <= #1 D;
	end

endmodule
