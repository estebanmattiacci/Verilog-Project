`timescale 1ns / 1ps

module mp_adder_TB();

  localparam CLOCK_PERIOD_NS = 100;
  
  localparam OPERAND_WIDTH   = 512; 
  localparam ADDER_WIDTH     = 32;
  localparam      N          = 8;  
  
  reg           rClk, rRst, rStart;
  reg [OPERAND_WIDTH-1:0]   rA, rB;
  
  wire [OPERAND_WIDTH:0]  wRes;
  wire          wDone;
  
  reg [OPERAND_WIDTH:0]  rExpectedResult;
  
  mp_adder #( .OPERAND_WIDTH(OPERAND_WIDTH), .ADDER_WIDTH(ADDER_WIDTH), .M(N) )
  mp_adder_INST
  ( .iClk(rClk), .iRst(rRst), .iStart(rStart), .iOpA(rA), .iOpB(rB), .oRes(wRes), .oDone(wDone) );

  // definition of clock period
  localparam  T = 20;  
  
  // generation of clock signal
  always 
  begin
    rClk = 1;
    #(T/2);
    rClk = 0;
    #(T/2);
  end

  initial
    begin
      rRst = 1;
      rStart = 0;
      rA = 0;
      rB = 0;
      
      #(5*T);
      rRst = 0;
      #(5*T);
      
      rStart = 1;
      rA <= 512'hff944267_77bd22d0_154cfdc6_0bc2e3be_828a9dd6_51509d0e_f64637b1_a4420e50_d9eb3211_e4118f95_fc6c6804_ade44609_5dc64584_b5215ed7_8657fddd_2e2ad47a;
      rB <= 512'hb22b95f5_d4868891_e1ee4b1a_9eb48566_441cbbc8_003b6a1e_438f80c2_2f193f46_801538f2_96179840_cb0509f4_ab69ccee_5bdfdc62_2c3c7b4f_cddcd30e_4c6be51d;
      #T;
      rExpectedResult = rA + rB;
      rStart = 0;
            
      // wait until wDone is asserted     
      @(posedge wDone);
      
      // display the results in the terminal
      $display(rExpectedResult);
      $display(wRes);
      
      // compare results
      // if using the test vector, answer should be: 0x1_02020202_02020202_02020202_09090908
      if ( rExpectedResult != wRes )
        $display("Test Failed - Incorrect Addition");
      else
        $display("Test Passed - Correct Addition");
      
      #(5*T);
        
      $stop;
    end

endmodule
