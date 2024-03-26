`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: KU Leuven
// Engineer: Mahmoud Chairi
// 
// Create Date: 06.05.2023 00:37:18
// Design Name: 
// Module Name: carry_select_adder_Nb
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


module carry_select_adder_Nb#(
    parameter   ADDER_WIDTH = 32,
    // Size of each block
    parameter   M = 8,
    // Size of the remaining block if ADDER_WIDTH is not a perfect square
    parameter   P = ADDER_WIDTH % M,
    // Is the remainder merged with first block
    parameter   merged = (P < (M/2)) ? 1 : 0,
    // Number of blocks (excluding the first one) 
    // If the remainder is big enough it will be a block on its own, giving one more block
    parameter   K = (merged == 1) ? ((ADDER_WIDTH - P)/M) - 1 : ((ADDER_WIDTH - P)/M),
    // Starting index of the first block of the chain of blocks
    parameter   OFFSET = (merged == 1) ? P + M : ( (P == 0) ? M : P)
    )
    (
    input   wire [ADDER_WIDTH-1:0]  iA, iB, 
    input   wire                    iCarry,
    output  wire [ADDER_WIDTH-1:0]  oSum, 
    output  wire                    oCarry
    );

    // Carry out of each block
    wire    [K:0]   C;


    // We first generate the first block
    carry_lookahead_adder_Nb #( .ADDER_WIDTH(OFFSET) )
    first_csla 
    (
        .iA(iA[OFFSET-1:0]),
        .iB(iB[OFFSET-1:0]),
        .iCarry(iCarry),
        .oSum(oSum[OFFSET-1:0]),
        .oCarry(C[0])
    );


    // We generate the rest of the blocks
    genvar i;
    generate
    for (i = 0; i < K; i = i + 1) begin
        // Internal signals
        wire [M-1:0] internal_sum0;
        wire [M-1:0] internal_sum1;
        wire [1:0]   internal_carry;

        // Internal carry select adder with carry in = 0
        carry_lookahead_adder_Nb #( .ADDER_WIDTH(M) )
        csla_sum0 
        (
            .iA(iA[i*M + OFFSET +: M]),
            .iB(iB[i*M + OFFSET +: M]),
            .iCarry(0),
            .oSum(internal_sum0),
            .oCarry(internal_carry[0])
        );
        
        // Internal carry select adder with carry in = 1
        carry_lookahead_adder_Nb #( .ADDER_WIDTH(M) )
        csla_sum1 
        (
            .iA(iA[i*M + OFFSET +: M]),
            .iB(iB[i*M + OFFSET +: M]),
            .iCarry(1),
            .oSum(internal_sum1),
            .oCarry(internal_carry[1])
        );

        assign C[i+1] = (C[i] == 1) ? internal_carry[1] : internal_carry[0];
        assign oSum[i*M + OFFSET +: M] = (C[i] == 1)? internal_sum1 : internal_sum0;

    end
    endgenerate

    assign oCarry = C[K];

endmodule


