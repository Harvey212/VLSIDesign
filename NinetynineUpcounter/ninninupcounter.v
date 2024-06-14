`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/08/2024 02:33:01 PM
// Design Name: 
// Module Name: ninninupcounter
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


module ninninupcounter(clk,rst,seg_out,seg_sel);

input clk;
input rst;
output [3:0] seg_sel;
output [7:0] seg_out;

reg [3:0] ones=4'b0000;
reg [3:0] tens=4'b0000;
reg [7:0] BCD;

reg [3:0] enable= 4'b1101;
reg [3:0] seg_sel=4'b0001;

reg [7:0] seg_out;

reg DP;
reg [6:0] eight;

reg [3:0] see;



reg [24:0] numclk;


always@ (posedge clk or negedge rst)
begin
      if(!rst)
        begin
            numclk <=25'b0000000000000000000000000;
        end
      else  
        begin
          numclk <= numclk+1;
        end
end

reg [15:0] scanclk; 
always@ (posedge clk or negedge rst)
begin
        if(!rst)
            begin
                scanclk<=16'b0000000000000000; 
            end
        else
            begin
                scanclk <= scanclk+1;
            end
end



always@(posedge numclk[24] or negedge rst)
begin
        if(!rst)
            begin
                ones <=4'b0000;
                tens <=4'b0000;
                BCD = {tens,ones};
            end
    
        else
            begin
                    if (ones<9)
                        begin
                            ones <=ones+1;
                        end
                    else
                        begin
                            ones <=4'b0000;
                        
                            if (tens<9)
                                begin
                                    tens <= tens+1;
                                end
                            else
                                begin
                                    tens <= 4'b0000;
                                end 
                       end
                       BCD <= {tens,ones};
           end
            
    
end



always@(posedge scanclk[15] or negedge rst)
begin   
      if(!rst)
        begin
            enable <= 4'b1110;
            seg_sel <= 4'b0001;
        end
      else
        begin
       
            enable <= 4'b1101;
            if (seg_sel == 4'b0010)
                begin
                    seg_sel <= 4'b0001;
                end
            else
                begin
                    seg_sel <= seg_sel << 1;
                end
        end
      
end




always@(*)
begin
    

            begin
                case(seg_sel)
                    4'b0001:
                        see = BCD[3:0];
                    4'b0010:
                        see = BCD[7:4];
                endcase
            end

            begin
                case (see)
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
        
              
     seg_out = {DP,eight};         
end
endmodule
