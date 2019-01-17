//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/12/17 10:21:02
// Design Name: 0412107 chi sheng chen
// Module Name: hw1_hs_tf
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

`timescale 1ns / 1ps
`include "clkA.v"
`include "clkB.v"
`include "ReqA.v"
`include "systemA.v"
`include "systemB.v" 

module hw1_hs_tf();
	
	wire clkA, clkB, Data, DataB, ReqA, Req, ReqB, Ack, AckA;

	reg DataA = 1;

	clkA clkA_0 (clkA);
	clkB clkB_0 (clkB);
	ReqA ReqA_0 (ReqA);

	systemA systemA_0 (DataA, clkA, Data, ReqA, Req, Ack, AckA);
	// ReqB = AckB
	systemB systemB_0 (Data, clkB, DataB, Req, ReqB, Ack);



endmodule
