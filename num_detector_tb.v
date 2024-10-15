`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/01/2024 02:06:05 PM
// Design Name: 
// Module Name: num_detector_tb
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


module num_detector_tb();

    reg [4:0] number;
    wire LED1, LED2, LED3, LED4, LED5;
    
    integer i;
    
num_detector uut (number,LED1,LED2,LED3,LED4,LED5);
    
    initial  begin
    
     for (i = 0; i < 31; i = i +1)
        begin
        number  = i;
        #10;
        end   
       #200 $stop;
       end
        
endmodule
