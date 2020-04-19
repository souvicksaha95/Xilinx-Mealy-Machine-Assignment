`timescale 10ns/1ns

module xilinx_assignment_mealy(ain, yout, clk, count, reset, led);
	input clk, reset, ain;
	output reg yout;
	output reg [0:7] count = 0;
	output reg [0:3] led;
	parameter s0 = 0, s1 = 1, s2 = 2, s3 = 3;
	reg [0:1] PS, NS;
	
always @(posedge clk or posedge reset)
	begin
		if(reset) PS <= s0;
		else	  PS <= NS;
	end
	
always @(PS,ain)
	begin
		case (PS)
			s0 : begin
				 yout <= ain ? 0 : 0;
				 NS <= ain ? s1 : s0;
				 end
			s1 : begin
				 yout <= ain ? 0 : 0;
				 NS <= ain ? s2 : s1;
				 end
			s2 : begin
				 yout <= ain ? 0 : 0;
				 NS <= ain ? s3 : s2;
				 end
			s3 : begin
				 yout <= ain ? 1 : 0;
				 NS <= ain ? s0 : s0;
				 end
		endcase
	end
	
always @(PS)
	if(ain == 1)
		begin
			count = count + 1;
			led <= count;
		end
		
endmodule