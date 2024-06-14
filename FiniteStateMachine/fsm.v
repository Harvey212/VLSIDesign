`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/15/2024 02:52:26 PM
// Design Name: 
// Module Name: fsm
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


module fsm(clk,rst,x,y);
input clk,rst,x;
output y;

parameter S0 = 2'b00, S1 = 2'b01, S2 = 2'b10, S3 = 2'b11;

reg y;
reg [1:0] present_state, next_state;

always@(posedge clk or negedge rst)
    begin
        if(!rst) 
            present_state <=S0;
        else
            present_state <=next_state;
    end
        
always@(present_state or x)
begin
    case(present_state)
        S0:
            begin
                if(x==1)
                    begin
                        next_state =S0;
                        
                       
                    end
                else
                    begin
                        next_state =S1;
                       
                       
                    end
            end
        S1:
            begin
                if(x==1)
                    begin
                        next_state =S2;
                        
                       
                    end
                else
                    begin
                        next_state =S1;
                        
                    end    
            end    
        S2:
            begin
                if(x==1)
                    begin
                        next_state =S3;
                        
                    end
                else
                    begin
                        next_state =S1;
                       
                    end
             end
         S3:
            begin
                if(x==1)
                    begin
                        next_state =S0;
                       
                    end
                else
                     begin
                        next_state =S1;
                       
                     end
           end
     endcase     
end




always@(present_state or x)
begin
    case(present_state)
        S0:
            begin
                if(x==1)
                    begin
                       
                        y=1'b0;
                       
                    end
                else
                    begin
                       
                        y=1'b0;
                       
                    end
            end
        S1:
            begin
                if(x==1)
                    begin
                       
                        y=1'b0;
                       
                    end
                else
                    begin
                        
                         y=1'b0;
                    end    
            end    
        S2:
            begin
                if(x==1)
                    begin
                        
                         y=1'b0;
                    end
                else
                    begin
                       
                        y=1'b0;
                    end
             end
         S3:
            begin
                if(x==1)
                    begin
                       
                        y=1'b0;
                    end
                else
                     begin
                       
                        y=1'b1;
                     end
           end
     endcase     
end







endmodule
