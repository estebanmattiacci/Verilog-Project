`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.05.2023 02:57:26
// Design Name: 
// Module Name: PFA_TB
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

`timescale 1 ns/ 1 ps

// Our testbench file
module PFA_TB();

// signal declaration
reg r_iA, r_iB, r_iCarry;
wire w_oSum, w_oPropagate, w_oGenerate;

// module instantiation
partial_full_adder PFA_inst( 
    .iA(r_iA), 
    .iB(r_iB), 
    .iCarry(r_iCarry),
    .oSum(w_oSum), 
    .oGenerate(w_oGenerate), 
    .oPropagate(w_oPropagate)
    );


// test vector
initial begin
    // test vector 1
    r_iA = 0;
    r_iB = 0;
    r_iCarry = 0;
    #50;
    if (w_oSum == 0 && w_oGenerate == (r_iA&r_iB) && w_oPropagate == (r_iA|r_iB))   $display("test vector 1 passed");
    else                                $display("test vector 1 failed");
    
    // test vector 2
    r_iA = 0;
    r_iB = 1;
    r_iCarry = 0;
    #50;
    if (w_oSum == 1 && w_oGenerate == (r_iA&r_iB) && w_oPropagate == (r_iA|r_iB))   $display("test vector 2 passed");
    else                                $display("test vector 2 failed");
    
    // test vector 3
    r_iA = 1;
    r_iB = 0;
    r_iCarry = 0;
    #50;
    if (w_oSum == 1 && w_oGenerate == (r_iA&r_iB) && w_oPropagate == (r_iA|r_iB))   $display("test vector 3 passed");
    else                                $display("test vector 3 failed");
    
    // test vector 4
    r_iA = 1;
    r_iB = 1;
    r_iCarry = 0;
    #50;
    if (w_oSum == 0 && w_oGenerate == (r_iA&r_iB) && w_oPropagate == (r_iA|r_iB))   $display("test vector 4 passed");
    else                                $display("test vector 4 failed");
    
    // test vector 5
    r_iA = 1;
    r_iB = 1;
    r_iCarry = 1;
    #50;
    if (w_oSum == 1 && w_oGenerate == (r_iA&r_iB) && w_oPropagate == (r_iA|r_iB))   $display("test vector 5 passed");
    else                                $display("test vector 5 failed");  
    
    // test vector 6
    r_iA = 0;
    r_iB = 0;
    r_iCarry = 1;
    #50;
    if (w_oSum == 1 && w_oGenerate == (r_iA&r_iB) && w_oPropagate == (r_iA|r_iB))   $display("test vector 6 passed");
    else                                $display("test vector 6 failed");
end

endmodule


