# Xilinx-Mealy-Machine-Assignment
This project is implemented and simulated Iverilog and plotted by GTKwave. Problem statement is following - Design a sequence detector implementing a Mealy state machine using three always blocks. The Mealy state machine has one input (ain) and one output (yout). The output yout is 1 if and only if the total number of 1s received is divisible by 3 (hint: 0 is inclusive, however, reset cycle(s) do not count as 0- see in simulation waveform time=400). Develop a test bench and verify the model through a behavioral simulation. Use SW0 as the clock input, SW1 as the ain input, the BTNU button as reset input to the circuit, number of 1s count on LED7:LED4, and LED0 as the yout output. Go through the design flow, generate the bitstream, and download it into the Nexys3 board. Verify the functionality.

PDF - https://www.xilinx.com/support/documentation/university/ISE-Teaching/HDL-Design/14x/Nexys3/Verilog/docs-pdf/lab10.pdf

![](https://github.com/souvicksaha95/Xilinx-Mealy-Machine-Assignment/blob/master/simulation.JPG)
The following picture is the output of testbench with all the changing variables. The previous waveform is a pictorial representation of this values.
![](https://github.com/souvicksaha95/Xilinx-Mealy-Machine-Assignment/blob/master/bit_changes.JPG)
