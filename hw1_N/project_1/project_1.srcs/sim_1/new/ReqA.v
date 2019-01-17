`timescale 1ns / 10ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/12/22 05:45:58
// Design Name: 
// Module Name: ReqA
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


module ReqA (

	output reg ReqA

);

reg delayFLAG = 0;
parameter delayTime = 10;

initial ReqA = 0;


always @(*) 
//always
begin
	if (!delayFLAG) 
	begin
		
		#delayTime;
		delayFLAG = ~delayFLAG;
		ReqA = 1;
		
	end

	else 
	begin

		#55  ReqA = ~ReqA;
		#240 ReqA = ~ReqA;
		
	end
end

endmodule
