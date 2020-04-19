`timescale 10ns/1ns

module xilinx_assignment_mealy_test;
	reg clk, reset, ain;
	wire yout;
	wire [0:7] count;
	wire [0:3] led;
		
	xilinx_assignment_mealy DUT(.clk(clk), .ain(ain), .yout(yout), .count(count), .reset(reset), .led(led));

	always
		#5 clk = ~clk;

	initial
		begin
			clk = 1'b0;
			reset = 1'b1;
			#11 reset = 1'b0; 
			$dumpfile("xilinx_assignment_mealy_test.vcd");
			$dumpvars(0, xilinx_assignment_mealy_test);
			$monitor($time, " clk = %b, ain = %b, yout = %b, count = %h, led = %b", clk, ain, yout, count, led);
		end
		
	initial
		begin
			#10 ain = 0; #10 ain = 1; #10 ain = 0; #10 ain = 1; 
			#10 ain = 0; #10 ain = 1; #10 ain = 0; #10 ain = 1; 
			#10 ain = 1; #10 ain = 1; #10 ain = 0; #10 ain = 1; 
			#10 ain = 0; #10 ain = 1; #10 ain = 0; #10 ain = 1; 
			#10 ain = 0; #10 ain = 1; #10 ain = 0; #10 ain = 1; 
			#10 $finish;
		end		
endmodule