`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/20/2024 03:40:49 PM
// Design Name: 
// Module Name: test_twotwomultiplier
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


module test_twotwomultiplier;

    reg [1:0] x;
    reg [1:0] y;
    wire [3:0] p;
    
    twotwomultiplier uut
    (
    .X(x),
    .Y(y),
    .P(p)
    );
    
    initial begin
    
     x[0]=0;
     x[1]=0;
     y[0]=0;
     y[1]=0;
     #100;   
     
     x[0]=0;
     x[1]=0;
     y[0]=1;
     y[1]=0;
     #100;
     
     x[0]=0;
     x[1]=0;
     y[0]=0;
     y[1]=1;
     #100;
     
     x[0]=0;
     x[1]=0;
     y[0]=1;
     y[1]=1;
     #100;   
     
     x[0]=1;
          x[1]=0;
          y[0]=0;
          y[1]=0;
          #100;   
          
          x[0]=1;
          x[1]=0;
          y[0]=1;
          y[1]=0;
          #100;
          
          x[0]=1;
          x[1]=0;
          y[0]=0;
          y[1]=1;
          #100;
          
          x[0]=1;
          x[1]=0;
          y[0]=1;
          y[1]=1;
          #100;  
    
        x[0]=0;
               x[1]=1;
               y[0]=0;
               y[1]=0;
               #100;   
               
               x[0]=0;
               x[1]=1;
               y[0]=1;
               y[1]=0;
               #100;
               
               x[0]=0;
               x[1]=1;
               y[0]=0;
               y[1]=1;
               #100;
               
               x[0]=0;
               x[1]=1;
               y[0]=1;
               y[1]=1;
               #100; 
    
        x[0]=1;
                    x[1]=1;
                    y[0]=0;
                    y[1]=0;
                    #100;   
                    
                    x[0]=1;
                    x[1]=1;
                    y[0]=1;
                    y[1]=0;
                    #100;
                    
                    x[0]=1;
                    x[1]=1;
                    y[0]=0;
                    y[1]=1;
                    #100;
                    
                    x[0]=1;
                    x[1]=1;
                    y[0]=1;
                    y[1]=1;
                    #100; 
    
    $finish;
    end
endmodule
