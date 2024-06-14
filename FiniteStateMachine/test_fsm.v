`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/15/2024 03:38:07 PM
// Design Name: 
// Module Name: test_fsm
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
module test_fsm();

reg x,rst,clk;
wire y;

fsm uut(.clk(clk),.rst(rst),.x(x),.y(y));

always #(10) clk = ~clk;

initial begin
    clk=0;
    rst=0;
    x=0;
    
    #25;
    
    x=1;
    rst=1;
    
    #20;   
    x=0;
     
    #20;
    x=1;
    
    #40;
    x=0;
    
    #20;
    x=1;
     
    #20;
    x=0;
     
    #20;
    x=1;
     
    #20;
    x=0;
     
    #20;
    x=1;
     
    #40; 
    x=0;
     
    #20; 
    x=1;
    
    #40;
    x=0;
    
    #40;
   
    
    $finish;
end

endmodule