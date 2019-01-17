//`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/12/22 05:49:40
// Design Name: 
// Module Name: systemA
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


module systemA(

	input wire clkA,
	input wire DataA,
	input wire ReqA,
	input wire Ack,

	output wire Data,
	output reg Req,
	output reg AckA

);

reg node1, node6, node7, node8;

// initialize
initial
begin
	
	Req = 0;
	AckA = 0;
	node1 = 0;
	node6 = 0;
	node7 = 0;
	node8 = 0;

end

// XOR in sysA
always @(ReqA, Req, node7, node8) 
begin

	node1 = ReqA ^ Req;
	AckA = node8 ^ node7;

end

//D flip flop output
always @(posedge clkA) 
begin
	
	Req <= node1;
	node6 <= Ack;
	node7 <= node6;
	node8 <= node7;

end

assign Data = DataA;

endmodule
