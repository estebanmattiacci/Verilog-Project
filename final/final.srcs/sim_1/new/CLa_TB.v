`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.05.2023 18:18:19
// Design Name: 
// Module Name: CLa_TB
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
module CLa_TB();

// signal declaration
parameter N = 16;
reg [N-1:0]  r_iA, r_iB;
reg r_iCarry;
wire [N-1:0]  w_oSum;
wire w_oCarry;

// module under test
carry_lookahead_adder_Nb #(.ADDER_WIDTH(N))
CLa( .iA(r_iA), .iB(r_iB), .iCarry(r_iCarry), .oSum(w_oSum), .oCarry(w_oCarry) );

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

