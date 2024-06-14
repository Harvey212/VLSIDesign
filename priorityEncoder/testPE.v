`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/10/2024 03:51:43 PM
// Design Name: 
// Module Name: testPE
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


module testPE();
    reg [7:0] I;
    wire [2:0] O;
    wire None;
    
    priorityEncoder uut
    (
        .I(I),
        .O(O),
        .None(None)
    );
    
    initial begin
        I=7'b0000000;
        #100;
        $finish;
    end
endmodule
