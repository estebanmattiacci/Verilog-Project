`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: KU Leuven
// Engineer: Mahmoud Chairi
// 
// Create Date: 04.05.2023 22:51:32
// Design Name: Partial Full Adder
// Module Name: partial_full_adder
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


module partial_full_adder(
    input   wire iA,
    input   wire iB,
    input   wire iCarry,
    output  wire oSum,
    output  wire oPropagate,
    output  wire oGenerate
    );

    assign oSum = (iA ^ iB) ^ iCarry;
    assign oPropagate = iA | iB;
    assign oGenerate = iA & iB;
endmodule
