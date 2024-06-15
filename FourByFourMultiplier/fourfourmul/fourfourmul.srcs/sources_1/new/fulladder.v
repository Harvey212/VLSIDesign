`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/27/2024 02:51:38 PM
// Design Name: 
// Module Name: fulladder
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


module fulladder(x,y,cin,s,cout);

input x,y,cin;
output s,cout;

wire s1,c1,c2,c3;

xor u1(s1,x,y);
and u2(c1,x,y);
and u3(c2,x,cin);
and u4(c3,y,cin);
xor u5(s,s1,cin);
or u6(cout,c1,c2,c3);

endmodule
