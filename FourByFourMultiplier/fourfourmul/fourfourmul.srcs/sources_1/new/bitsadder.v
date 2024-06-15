`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/27/2024 02:58:31 PM
// Design Name: 
// Module Name: bitsadder
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


module bitsadder(X,Y,c0,c4,S);

input [3:0] X;
input [3:0] Y;
input c0;
output c4;
output [3:0] S;

wire t1,t2,t3;

fulladder u1(.x(X[0]),.y(Y[0]),.cin(c0),.s(S[0]),.cout(t1));
fulladder u2(.x(X[1]),.y(Y[1]),.cin(t1),.s(S[1]),.cout(t2));
fulladder u3(.x(X[2]),.y(Y[2]),.cin(t2),.s(S[2]),.cout(t3));
fulladder u4(.x(X[3]),.y(Y[3]),.cin(t3),.s(S[3]),.cout(c4));

endmodule
