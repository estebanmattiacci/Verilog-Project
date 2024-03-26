`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.05.2023 10:35:22
// Design Name: 
// Module Name: CSa_TB
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


// test module 
module CSa_TB();

// signal declaration
parameter N = 15;
parameter M = 4;
reg [N-1:0]  r_iA, r_iB;
reg r_iCarry;
wire [N-1:0]  w_oSum;
wire w_oCarry;

// module under test
carry_select_adder_Nb #(.ADDER_WIDTH(N), .M(M) )
CSa( .iA(r_iA), .iB(r_iB), .iCarry(r_iCarry), .oSum(w_oSum), .oCarry(w_oCarry) );

// test 
integer i;

initial
    begin

    $monitor ("(%d + %d + %d) = %d", r_iA, r_iB, r_iCarry, {w_oCarry, w_oSum}); 

    // Use a for loop to apply random values to the input  
    for (i = 0; i < 5; i = i+1) 
    begin   
        #30;
        r_iA <= $random;  
        r_iB <= $random;  
        r_iCarry <= $random;  
    end
  
end

endmodule
