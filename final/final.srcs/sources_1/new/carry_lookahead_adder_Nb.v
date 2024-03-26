`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: KU Leuven   
// Engineer: Mahmoud Chairi
// 
// Create Date: 04.05.2023 23:46:45
// Design Name: 
// Module Name: carry_lookahead_adder_Nb
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


module carry_lookahead_adder_Nb #(
    parameter   ADDER_WIDTH = 32
    )
    (
    input   wire [ADDER_WIDTH-1:0]  iA, iB, 
    input   wire                    iCarry,
    output  wire [ADDER_WIDTH-1:0]  oSum, 
    output  wire                    oCarry
    );

    wire [ADDER_WIDTH-1:0] P, G;
    wire [ADDER_WIDTH:0] C;
    assign C[0] = iCarry;
    genvar i, j;

    // Generate P, G and sum 
    generate
        for(i = 0; i < ADDER_WIDTH; i = i + 1) begin : gen_PFA
            // Generate the PFA and its P and G outputs
            partial_full_adder pfa(
                .iA(iA[i]),
                .iB(iB[i]),
                .iCarry(C[i]),
                .oSum(oSum[i]),
                .oPropagate(P[i]),
                .oGenerate(G[i])
            );

            // Create the intermediate internal OR
            wire [i+1:0] internal_OR;

            // Those two terms are always present
            assign internal_OR[i+1] = G[i];
            assign internal_OR[i] = ( (&P[i:0]) & C[0] ) ;

            // Creating the intermediate AND gates
            if (i > 0) begin
                for (j = 0; j <= i-1; j = j + 1) begin : gen_ANDs
                    assign internal_OR[j] = ( G[j] & (&P[i:(j+1)]) );
                end
            end
                
            // The OR of all AND gates and G[i] gives the next carry
            assign C[i+1] = |internal_OR;
        end
    endgenerate

    assign oCarry = C[ADDER_WIDTH];
endmodule
