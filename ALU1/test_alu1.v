`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/03/2024 03:10:51 PM
// Design Name: 
// Module Name: test_alu1
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


module test_alu1;


reg [2:0] x;
reg [2:0] y;
reg [1:0] s;
wire [5:0] z;


alu1 uut
(
.X(x)
,.Y(y)
,.OP(s)
,.Z(z)
);

    initial begin

    x = 3'b011;
    y = 3'b100;
    s = 2'b00;
    #100;
    
    x = 3'b011;
    y = 3'b100;
    s = 2'b01;
    #100;

    x = 3'b011;
    y = 3'b100;
    s = 2'b10;
    #100;

    x = 3'b011;
    y = 3'b100;
    s = 2'b11;
    #100;

    $finish;
end
endmodule
