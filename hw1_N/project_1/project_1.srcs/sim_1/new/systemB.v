//`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/12/22 05:51:50
// Design Name: 
// Module Name: systemB
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


module systemB(

	input wire clkB,
	input wire Data,
	input wire Req,

	output reg DataB,
	output reg ReqB,
	output reg Ack
);


reg node2, node3, node4, node5;

// initialize
initial
begin
	
	ReqB = 0;
	Ack = 0;
	node2 = 0;
	node3 = 0;
	node4 = 0;
	node5 = 0;

end

// XOR in sysB
always @(ReqB, Ack, node3, node4, node5) 
begin

    ReqB = node4 ^ node3;
	node5 = ReqB ^ Ack;

end

//D flip flop output
always @(posedge clkB) 
begin
	
	node2 <= Req;
	node3 <= node2;
	node4 <= node3;
	Ack <= node5;

	if(ReqB)
	begin
	   DataB <= Data;
	end
	
	else 
	begin
		DataB <= 0;	
	end

end


endmodule
