`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.03.2023 08:18:25
// Design Name: 
// Module Name: full_adder
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


module full_adder(
    input   wire    iA, iB, iCarry,
    output  wire    oSum, oCarry
    );
    
    wire w1, w2, w3;
    
    assign w1 = iA ^ iB;
    assign w2 = w1 && iCarry;
    assign w3 = iA && iB;
    assign oSum = w1 ^ iCarry;
    assign oCarry = w2 || w3;
endmodule
