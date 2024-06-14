`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/17/2024 02:31:51 PM
// Design Name: 
// Module Name: sevensegment
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


module sevensegment(addr,seg_out,seg_sel);
    input [3:0] addr;
    output [7:0] seg_out;
    output [3:0] seg_sel;
    
    reg [3:0] data;
    
    reg [7:0] seg_out;
    reg [3:0] seg_sel;
    
    reg DP;
    reg [6:0] eight;
    
    
    always @(addr)
            if (addr==4'b0000)
                begin
                    data=4'h0;
                end
            else if (addr==4'b0001)
                begin
                   data=4'h2;
                end
            else if (addr==4'b0010)
                begin
                  data=4'h4;
                end
            else if (addr==4'b0011)
                begin
                   data=4'h6;
                end
            else if (addr==4'b0100)
                begin
                  data=4'h8;
                end        
            else if (addr==4'b0101)
                begin
                  data=4'hA;
                end      
            else if (addr==4'b0110)
                begin
                   data=4'hC;
                end  
            else if (addr==4'b0111)
                begin
                  data=4'hE;
                end
            else if (addr==4'b1000)
                begin
                   data=4'h1;
                end
            else if (addr==4'b1001)
                begin
                    data=4'h3;             
                end
                
            else if (addr==4'b1010)
               begin
                    data=4'h5;             
               end
               
            else if (addr==4'b1011)
               begin
                     data=4'h7;           
               end
               
            else if (addr==4'b1100)
               begin        
                    data=4'h9;                     
               end
            else if (addr==4'b1101)
               begin
                     data=4'hB;                         
               end
            else if (addr==4'b1110)
               begin
                     data=4'hD;                         
               end
            else
               begin
                    data=4'hF;                          
               end
   
   
   
   always @(data)
    begin
    case (data)
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
        4'hA:
              {DP,eight} = {1'b0, 7'b1110111};                    
        4'hB:
              {DP,eight} = {1'b0, 7'b1111100};                           
        4'hC:
              {DP,eight} = {1'b0, 7'b0111001};                                      
        4'hD:
              {DP,eight} = {1'b0, 7'b1011110};                                                   
        4'hE:
              {DP,eight} = {1'b0, 7'b1111001};                                                              
        4'hF:
              {DP,eight} = {1'b0, 7'b1110001};
    
   endcase
   end
   
    always @(DP,eight)
      begin
        seg_out = {DP,eight};
        seg_sel = 4'b0001;
      end
   
 
 
endmodule
