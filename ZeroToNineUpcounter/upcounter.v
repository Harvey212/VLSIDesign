`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/01/2024 02:31:47 PM
// Design Name: 
// Module Name: upcounter
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
module upcounter(clk,rst,seg_out,seg_sel);

input clk,rst;
reg [26:0] devider;
reg [3:0] BCD;
always@ (posedge clk or posedge rst)
begin
    if (rst==0)
        begin
            devider <= 27'b000000000000000000000000000;
        end
    else
        begin
            devider <= devider+1;
        end
end


always@(posedge devider[26] or posedge rst)
begin
    if(rst==0)
        begin
            BCD <=4'b0000;
        end
     else
        begin
            if (BCD<9)
                begin
                    BCD =BCD+1;
                end
             else
                begin
                    BCD = 4'b0000;
                end
        end
end

output [7:0] seg_out;
output [3:0] seg_sel;

reg [7:0] seg_out;
reg [3:0] seg_sel;

reg DP;
reg [6:0] eight;




always@(BCD)
begin
    begin
        case (BCD)
            4'h0:
                {DP,eight} = {1'b0, 7'b0111111};             
            4'h1:
                {DP,eight} = {1'b0, 7'b0000110};
            4'h2:
                {DP,eight} = {1'b0, 7'b1011011};
            4'h3:
                {DP,eight} = {1'b0, 7'b1001111};                                
            4'h4:
                {DP,eight} = {1'b0, 7'b1100110};                        
            4'h5:
                {DP,eight} = {1'b0, 7'b1101101};                                
            4'h6:
                {DP,eight} = {1'b0, 7'b1111101};                      
            4'h7:
                 {DP,eight} = {1'b0, 7'b0000111};   
            4'h8:
                 {DP,eight} = {1'b0, 7'b1111111};               
            4'h9:
                  {DP,eight} = {1'b0, 7'b1101111};                                                                                                                                               
            endcase
     end        
     seg_out <= {DP,eight};
     seg_sel <= 4'b0001;         
end
endmodule