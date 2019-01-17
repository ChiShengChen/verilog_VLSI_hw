`timesvale 1ns / 10ps

module ReqA (

	output reg ReqA

);

reg delayFLAG = 0;
parameter delayTime = 10;

initial ReqA = 0;


always @(*) 
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