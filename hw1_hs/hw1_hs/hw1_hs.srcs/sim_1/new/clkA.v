`timescale = 1ns / 1ps

moudule clkA(


	output reg clkA

);

reg delay_flag = 0;
parameter delay_time = 2;
parameter clkA_period = 46;

initial clkA = 0;
	
always @(*) 
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