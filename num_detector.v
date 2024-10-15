`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/01/2024 01:51:55 PM
// Design Name: 
// Module Name: num_detector
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



module num_detector(number,LED1,LED2,LED3,LED4,LED5);

    input[4:0] number;
    
    output LED1,LED2,LED3,LED4,LED5;
    
    //turns on if multiple of 2
    assign LED1 = ~number[0];
    //multiple of 3
    assign LED2 = (number == 3 || number == 6 || number == 9 || number == 12 || number == 15 || 
    number == 18 || number == 21 || number == 24 || number == 27 || number == 30);
    //multiple of 4
    assign LED3 = (number[1:0] == 2'b00);
    //multiple of 5
    assign LED4 = (number == 5 || number == 10 || number == 15 || number == 20 || number == 25 || 
    number == 30);
    //multiple of 2,3,5
    assign LED5 = LED1 && LED2 && LED4;
endmodule
