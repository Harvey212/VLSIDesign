`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/20/2024 03:17:35 PM
// Design Name: 
// Module Name: twotwomultiplier
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


module twotwomultiplier(X,Y,P);

input [1:0] X;
input [1:0] Y;
wire t0,t1,t3,t4;
output [3:0] P;

and u1(P[0],X[0],Y[0]);
and u2(t0,X[1],Y[0]);
and u3(t1,Y[1],X[0]);
and u5(t4,X[1],Y[1]);

halfadder u4(.x(t0),.y(t1),.s(P[1]),.c(t3));
halfadder u6(.x(t3),.y(t4),.s(P[2]),.c(P[3]));

endmodule
