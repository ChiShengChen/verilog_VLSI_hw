`timescale 1ns / 10ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/12/22 05:48:38
// Design Name: 
// Module Name: clkB
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module clkB(


	output reg clkA

);

reg delay_flag = 0;
parameter delay_time = 13;
parameter clkA_period = 58;

initial clkA = 0;
	
always 
begin
 	if (!delay_flag) 
 	begin
 		
 		#delay_time;
 		delay_flag = ~delay_flag;
 		clkA = 1;
 		
 	end

 	else 
 	begin
 		
 		#(clkA_period/2)clkA = ~clkA;

 	end
 end 

endmodule
