`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: KU Leuven
// Engineer: Mahmoud Chairi
// 
// Create Date: 04.04.2023 16:53:03
// Design Name: 
// Module Name: ripple_carry_adder_Nb
// Project Name: N bits Ripple Carry Adder
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


module ripple_carry_adder_Nb #(
    parameter   ADDER_WIDTH = 16
    )
    (
    input   wire [ADDER_WIDTH-1:0]  iA, iB, 
    input   wire                    iCarry,
    output  wire [ADDER_WIDTH-1:0]  oSum, 
    output  wire                    oCarry
);

    wire [ADDER_WIDTH:0] C;

    genvar i;
    generate
        for(i = 0; i < ADDER_WIDTH; i = i + 1) begin : gen_full_adder
            full_adder fa(
                .iA(iA[i]),
                .iB(iB[i]),
                .iCarry((i == 0 ? iCarry : C[i])),
                .oSum(oSum[i]),
                .oCarry(C[i+1])
            );
        end
    endgenerate

    assign oCarry = C[ADDER_WIDTH];

endmodule
