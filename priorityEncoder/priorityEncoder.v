`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/10/2024 02:52:05 PM
// Design Name: 
// Module Name: priorityEncoder
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


module priorityEncoder(I,O,None);

    input [7:0] I;
    output [2:0] O;
    output None;
    
    reg [2:0] O;
    reg None;
    
    always @(*)
            if (I[7]==1'b1)
                begin
                    None = 0;
                    O = 3'b111;
                end
            else if (I[6]==1'b1)
                begin
                    O = 3'b110;
                    None = 1'b0;
                end
            else if (I[5]==1'b1)
                begin
                    O = 3'b101;
                    None = 1'b0;
                end
            else if (I[4]==1'b1)
                begin
                    O = 3'b100;
                    None = 1'b0;
                end
            else if (I[3]==1'b1)
                begin
                   O = 3'b011;
                   None = 1'b0;
                end        
            else if (I[2]==1'b1)
                begin
                    O = 3'b010;
                    None = 1'b0;
                end      
            else if (I[1]==1'b1)
                begin
                    O = 3'b001;
                    None = 1'b0;
                end  
            else if (I[0]==1'b1)
                begin
                   O = 3'b000;
                   None = 1'b0;
                end
           else
                begin
                    O = 3'b000;
                    None = 1'b1;
                end
        
endmodule
