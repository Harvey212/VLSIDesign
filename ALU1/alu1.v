`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/03/2024 02:44:45 PM
// Design Name: 
// Module Name: alu1
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


module alu1(X,Y,OP,Z);

input [2:0] X,Y;
input [1:0] OP;
output [5:0] Z;

assign Z = (OP == 2'b00) ? X+Y:
           (OP == 2'b01) ? X*Y:
           (OP == 2'b10) ? X&Y:
                           X|Y;


endmodule
