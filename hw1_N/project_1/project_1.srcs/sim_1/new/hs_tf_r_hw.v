`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/12/22 05:59:36
// Design Name: 
// Module Name: hs_tf_r_hw
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
`include "clkA.v"
`include "clkB.v"
`include "ReqA.v"
`include "systemA.v"
`include "systemB.v" 

module hs_tf_r_hw();

    wire clkA, clkB, Data, DataB, ReqA, Req, ReqB, Ack, AckA;

	reg DataA = 1;

	clkA clkA_0 (clkA);
	clkB clkB_0 (clkB);
	ReqA ReqA_0 (ReqA);

	systemA systemA_0 (clkA, DataA, ReqA, Ack, Data, Req, AckA);
	// ReqB = AckB
	systemB systemB_0 (clkB, Data, Req, DataB, ReqB, Ack);

endmodule
