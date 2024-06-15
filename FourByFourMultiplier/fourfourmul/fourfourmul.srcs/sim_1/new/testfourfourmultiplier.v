`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/27/2024 04:06:15 PM
// Design Name: 
// Module Name: testfourfourmultiplier
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


module testfourfourmultiplier;
reg [3:0] x;
reg [3:0] y;
reg [2:0] c;
wire [7:0] p; 

fourfourmultiplier uut
(
.X(x)
,.Y(y)
,.C(c)
,.P(p)
);


initial begin
   
   x=4'b0000;
   y=4'b0001;
   c=3'b000;
   #100;
   
   x=4'b0001;
   y=4'b0001;
   c=3'b000;
   #100;
   
   x=4'b0001;
   y=4'b0100;
   c=3'b000;
   #100;
   
   x=4'b1001;
   y=4'b0101;
   c=3'b000;
   #100;
   
   x=4'b1111;
   y=4'b0000;
   c=3'b000;
   #100;
   
   x=4'b1010;
   y=4'b0101;
   c=3'b000;
   #100;
   
    x=4'b1111;
    y=4'b1111;
    c=3'b000;
    #100;
    
    x=4'b0110;
    y=4'b0111;
    c=3'b000;
    #100;

    $finish;
end
endmodule
