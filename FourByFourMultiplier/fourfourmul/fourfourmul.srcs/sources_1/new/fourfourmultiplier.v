`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/27/2024 02:47:42 PM
// Design Name: 
// Module Name: fourfourmultiplier
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


module fourfourmultiplier(X,Y,C,P);

input [3:0] X;
input [3:0] Y;
input [2:0] C;
output [7:0] P;

wire r1x0,r1x1,r1x2,r1x3,r1y0,r1y1,r1y2,r1y3;
wire r2x0,r2x1,r2x2,r2x3,r2y0,r2y1,r2y2,r2y3;
wire r3x0,r3x1,r3x2,r3x3,r3y0,r3y1,r3y2,r3y3;

wire r1s1,r1s2,r1s3,r1c4;
wire r2s0,r2s1,r2s2,r2s3,r2c4;
wire r3s0,r3s1,r3s2,r3s3,r3c4;

and (P[0],X[0],Y[0]);
and (r1x0,X[1],Y[0]);
and (r1x1,X[2],Y[0]);
and (r1x2,X[3],Y[0]);
and (r1x3,0,0);

and (r1y0,X[0],Y[1]);
and (r1y1,X[1],Y[1]);
and (r1y2,X[2],Y[1]);
and (r1y3,X[3],Y[1]);

bitsadder u1(.X({r1x3,r1x2,r1x1,r1x0}),.Y({r1y3,r1y2,r1y1,r1y0}),.c0(C[0]),.c4(r1c4),.S({r1s3,r1s2,r1s1,P[1]}));

and (r2y0,X[0],Y[2]);
and (r2y1,X[1],Y[2]);
and (r2y2,X[2],Y[2]);
and (r2y3,X[3],Y[2]);

bitsadder u2(.X({r1c4,r1s3,r1s2,r1s1}),.Y({r2y3,r2y2,r2y1,r2y0}),.c0(C[0]),.c4(r2c4),.S({r2s3,r2s2,r2s1,P[2]}));

and (r3y0,X[0],Y[3]);
and (r3y1,X[1],Y[3]);
and (r3y2,X[2],Y[3]);
and (r3y3,X[3],Y[3]);

bitsadder u3(.X({r2c4,r2s3,r2s2,r2s1}),.Y({r3y3,r3y2,r3y1,r3y0}),.c0(C[0]),.c4(P[7]),.S({P[6],P[5],P[4],P[3]}));

endmodule
