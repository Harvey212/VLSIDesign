`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/24/2024 03:12:12 PM
// Design Name: 
// Module Name: alu2
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


module alu2(In1,In2,opcode,seg_out,seg_sel);

input [1:0] In1,In2;
input [2:0] opcode;
output [7:0] seg_out;
output [3:0] seg_sel;


reg [7:0] seg_out;
reg [3:0] seg_sel;

reg [2:0] out;
reg DP;
reg [6:0] eight;

always@(In1 or In2 or opcode)
    begin
    if (opcode==3'b000)
        begin
            out = In1 + In2;
        end
    else if(opcode==3'b001)
        begin
             out = In1 - In2;
        end
    else if(opcode==3'b010)
        begin
             out = In1 & In2;
        end
    else if(opcode==3'b011)
        begin
             out = In1 | In2;
        end
    else if(opcode==3'b100)
        begin
             out = ~(3'b100 + In1);
        end
    else
        begin
            {DP,eight} = {1'b0, 7'b1110110};
        end
        
            
     if((opcode != 3'b101) & (opcode != 3'b110) & (opcode != 3'b111))
        begin
            case (out)
                3'b000:
                    {DP,eight} = {1'b0, 7'b0111111};             
                3'b001:
                    {DP,eight} = {1'b0, 7'b0000110};
                3'b010:
                    {DP,eight} = {1'b0, 7'b1011011};
                3'b011:
                    {DP,eight} = {1'b0, 7'b1001111};                                
                3'b100:
                    {DP,eight} = {1'b0, 7'b1100110};                        
                3'b101:
                    {DP,eight} = {1'b0, 7'b1101101};                                
                3'b110:
                    {DP,eight} = {1'b0, 7'b1111101};                      
                3'b111:
                    {DP,eight} = {1'b0, 7'b0000111};                                                                                                                                        
            endcase
        end
        
      seg_out = {DP,eight};
      seg_sel = 4'b0001;         
    end


   
        
endmodule





    
    
    
    
    
   