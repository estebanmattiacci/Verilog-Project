
`timescale 1ns / 1ps

module uart_top_TB ();
 
  // Define signals for module under test
  reg  rClk = 0;
  reg  rRst = 0;
  reg  rRx=1;
  wire w_oTx;
  reg  r_iTx = 1; // input to uart_top


  // Define signals for UART TX
  reg rTxStart = 0;
  reg [7:0] rTxByte = 0;
  wire wTxSerial;
  wire wTxDone;
  
  // We downscale the values in the simulation
  // this will give CLKS_PER_BIT = 100 / 10 = 10
  localparam CLK_FREQ_inst  = 100;
  localparam BAUD_RATE_inst = 10;
  localparam CLKS_PER_BIT_inst = CLK_FREQ_inst/BAUD_RATE_inst;

  // Instantiate UART TX for testing
  uart_tx #( .CLK_FREQ(CLK_FREQ_inst), .BAUD_RATE(BAUD_RATE_inst) ) 
  UART_TX_INST
    (.iClk(rClk),
    .iRst(rRst),
    .iTxStart(rTxStart),
    .iTxByte(rTxByte),
    .oTxSerial(wTxSerial),
    .oTxDone(wTxDone)
    );

  
  
  // Instantiate DUT  
  uart_top 
  #(  .OPERAND_WIDTH(32), .ADDER_WIDTH(16), .CLK_FREQ(CLK_FREQ_inst), .BAUD_RATE(BAUD_RATE_inst) )
  uart_top_inst
  ( .iClk(rClk), .iRst(rRst), .iRx(r_iTx), .oTx(w_oTx) );

  
  
  // Define clock signal
  localparam CLOCK_PERIOD = 4;
  
  always
    #(CLOCK_PERIOD/2) rClk <= !rClk;
 
  /**
  * INPUT STIMULUS
  *
  * IMPORTANT : The receiver samples the rx line and shifts each sampled bit in a right shift register.
  * Thus when we send : 1 0 1 1  0 1 1 0
  * The buffer in the rx module ends up with : 0 1 1 0  1 1 0 1
  * The byte sent is mirrored
  * We need to take this into account when sending data to the module
  */
  initial
    begin


      //-------------------------RESET SYSTEM-----------------------------/
      rRst = 1;
      #(5*CLOCK_PERIOD);
      rRst =0;
      #(5*CLOCK_PERIOD);

      // We want to send "$6D88 44CC + $22AA 66EE" 
      // Result should be "$00 9032 ABBA"
      // Which in binary is : "0000 0000 | 1001 0000 | 0011 0010 | 1010 1011 | 1011 1010"
      // Which again is mirrored when sent 
      // We read in the simulation : "0000 0000 | 0000 1001 | 0100 1100 | 1101 0101 | 0101 1101" 

      //-------------------------BYTE 1 = 0x6D-----------------------------/
      r_iTx = 0; // start bit
      #((CLKS_PER_BIT_inst)*CLOCK_PERIOD);
      r_iTx = 1; // data bit 0
      #( (CLKS_PER_BIT_inst)*CLOCK_PERIOD);
      r_iTx = 0; // data bit 1
      #( (CLKS_PER_BIT_inst)*CLOCK_PERIOD);
      r_iTx = 1; // data bit 2
      #( (CLKS_PER_BIT_inst)*CLOCK_PERIOD);
      r_iTx = 1; // data bit 3
      #( (CLKS_PER_BIT_inst)*CLOCK_PERIOD);
      r_iTx = 0; // data bit 4
      #( (CLKS_PER_BIT_inst)*CLOCK_PERIOD);
      r_iTx = 1; // data bit 5
      #( (CLKS_PER_BIT_inst)*CLOCK_PERIOD);
      r_iTx = 1; // data bit 6
      #( (CLKS_PER_BIT_inst)*CLOCK_PERIOD);
      r_iTx = 0; // data bit 7
      #( (CLKS_PER_BIT_inst)*CLOCK_PERIOD);
      r_iTx = 1; // stop bit
      #( (CLKS_PER_BIT_inst)*CLOCK_PERIOD);

      //-------------------------BYTE 2 = 0x88-----------------------------/
      r_iTx = 0; // start bit
      #(CLKS_PER_BIT_inst*CLOCK_PERIOD);
      r_iTx = 0; // data bit 0
      #(CLKS_PER_BIT_inst*CLOCK_PERIOD);
      r_iTx = 0; // data bit 1
      #(CLKS_PER_BIT_inst*CLOCK_PERIOD);
      r_iTx = 0; // data bit 2
      #(CLKS_PER_BIT_inst*CLOCK_PERIOD);
      r_iTx = 1; // data bit 3
      #(CLKS_PER_BIT_inst*CLOCK_PERIOD);
      r_iTx = 0; // data bit 4
      #(CLKS_PER_BIT_inst*CLOCK_PERIOD);
      r_iTx = 0; // data bit 5
      #(CLKS_PER_BIT_inst*CLOCK_PERIOD);
      r_iTx = 0; // data bit 6
      #(CLKS_PER_BIT_inst*CLOCK_PERIOD);
      r_iTx = 1; // data bit 7
      #(CLKS_PER_BIT_inst*CLOCK_PERIOD);
      r_iTx = 1; // stop bit
      #(CLKS_PER_BIT_inst*CLOCK_PERIOD);

      //-------------------------BYTE 3 = 0x44-----------------------------/
      r_iTx = 0; // start bit
      #(CLKS_PER_BIT_inst*CLOCK_PERIOD);
      r_iTx = 0; // data bit 0
      #(CLKS_PER_BIT_inst*CLOCK_PERIOD);
      r_iTx = 0; // data bit 1
      #(CLKS_PER_BIT_inst*CLOCK_PERIOD);
      r_iTx = 1; // data bit 2
      #(CLKS_PER_BIT_inst*CLOCK_PERIOD);
      r_iTx = 0; // data bit 3
      #(CLKS_PER_BIT_inst*CLOCK_PERIOD);
      r_iTx = 0; // data bit 4
      #(CLKS_PER_BIT_inst*CLOCK_PERIOD);
      r_iTx = 0; // data bit 5
      #(CLKS_PER_BIT_inst*CLOCK_PERIOD);
      r_iTx = 1; // data bit 6
      #(CLKS_PER_BIT_inst*CLOCK_PERIOD);
      r_iTx = 0; // data bit 7
      #(CLKS_PER_BIT_inst*CLOCK_PERIOD);
      r_iTx = 1; // stop bit
      #(CLKS_PER_BIT_inst*CLOCK_PERIOD);

      //-------------------------BYTE 4 = 0xCC-----------------------------/
      r_iTx = 0; // start bit
      #(CLKS_PER_BIT_inst*CLOCK_PERIOD);
      r_iTx = 0; // data bit 0
      #(CLKS_PER_BIT_inst*CLOCK_PERIOD);
      r_iTx = 0; // data bit 1
      #(CLKS_PER_BIT_inst*CLOCK_PERIOD);
      r_iTx = 1; // data bit 2
      #(CLKS_PER_BIT_inst*CLOCK_PERIOD);
      r_iTx = 1; // data bit 3
      #(CLKS_PER_BIT_inst*CLOCK_PERIOD);
      r_iTx = 0; // data bit 4
      #(CLKS_PER_BIT_inst*CLOCK_PERIOD);
      r_iTx = 0; // data bit 5
      #(CLKS_PER_BIT_inst*CLOCK_PERIOD);
      r_iTx = 1; // data bit 6
      #(CLKS_PER_BIT_inst*CLOCK_PERIOD);
      r_iTx = 1; // data bit 7
      #(CLKS_PER_BIT_inst*CLOCK_PERIOD);
      r_iTx = 1; // stop bit
      #(CLKS_PER_BIT_inst*CLOCK_PERIOD);

      //-------------------------BYTE 5 = 0x22-----------------------------/
      r_iTx = 0; // start bit
      #(CLKS_PER_BIT_inst*CLOCK_PERIOD);
      r_iTx = 0; // data bit 0
      #(CLKS_PER_BIT_inst*CLOCK_PERIOD);
      r_iTx = 1; // data bit 1
      #(CLKS_PER_BIT_inst*CLOCK_PERIOD);
      r_iTx = 0; // data bit 2
      #(CLKS_PER_BIT_inst*CLOCK_PERIOD);
      r_iTx = 0; // data bit 3
      #(CLKS_PER_BIT_inst*CLOCK_PERIOD);
      r_iTx = 0; // data bit 4
      #(CLKS_PER_BIT_inst*CLOCK_PERIOD);
      r_iTx = 1; // data bit 5
      #(CLKS_PER_BIT_inst*CLOCK_PERIOD);
      r_iTx = 0; // data bit 6
      #(CLKS_PER_BIT_inst*CLOCK_PERIOD);
      r_iTx = 0; // data bit 7
      #(CLKS_PER_BIT_inst*CLOCK_PERIOD);
      r_iTx = 1; // stop bit
      #(CLKS_PER_BIT_inst*CLOCK_PERIOD);

      //-------------------------BYTE 6 = 0xAA-----------------------------/
      r_iTx = 0; // start bit
      #(CLKS_PER_BIT_inst*CLOCK_PERIOD);
      r_iTx = 0; // data bit 0
      #(CLKS_PER_BIT_inst*CLOCK_PERIOD);
      r_iTx = 1; // data bit 1
      #(CLKS_PER_BIT_inst*CLOCK_PERIOD);
      r_iTx = 0; // data bit 2
      #(CLKS_PER_BIT_inst*CLOCK_PERIOD);
      r_iTx = 1; // data bit 3
      #(CLKS_PER_BIT_inst*CLOCK_PERIOD);
      r_iTx = 0; // data bit 4
      #(CLKS_PER_BIT_inst*CLOCK_PERIOD);
      r_iTx = 1; // data bit 5
      #(CLKS_PER_BIT_inst*CLOCK_PERIOD);
      r_iTx = 0; // data bit 6
      #(CLKS_PER_BIT_inst*CLOCK_PERIOD);
      r_iTx = 1; // data bit 7
      #(CLKS_PER_BIT_inst*CLOCK_PERIOD);
      r_iTx = 1; // stop bit
      #(CLKS_PER_BIT_inst*CLOCK_PERIOD);

      //-------------------------BYTE 7 = 0x66-----------------------------/
      r_iTx = 0; // start bit
      #(CLKS_PER_BIT_inst*CLOCK_PERIOD);
      r_iTx = 0; // data bit 0
      #(CLKS_PER_BIT_inst*CLOCK_PERIOD);
      r_iTx = 1; // data bit 1
      #(CLKS_PER_BIT_inst*CLOCK_PERIOD);
      r_iTx = 1; // data bit 2
      #(CLKS_PER_BIT_inst*CLOCK_PERIOD);
      r_iTx = 0; // data bit 3
      #(CLKS_PER_BIT_inst*CLOCK_PERIOD);
      r_iTx = 0; // data bit 4
      #(CLKS_PER_BIT_inst*CLOCK_PERIOD);
      r_iTx = 1; // data bit 5
      #(CLKS_PER_BIT_inst*CLOCK_PERIOD);
      r_iTx = 1; // data bit 6
      #(CLKS_PER_BIT_inst*CLOCK_PERIOD);
      r_iTx = 0; // data bit 7
      #(CLKS_PER_BIT_inst*CLOCK_PERIOD);
      r_iTx = 1; // stop bit
      #(CLKS_PER_BIT_inst*CLOCK_PERIOD);

      //-------------------------BYTE 8 = 0xEE-----------------------------/
      r_iTx = 0; // start bit
      #(CLKS_PER_BIT_inst*CLOCK_PERIOD);
      r_iTx = 0; // data bit 0
      #(CLKS_PER_BIT_inst*CLOCK_PERIOD);
      r_iTx = 1; // data bit 1
      #(CLKS_PER_BIT_inst*CLOCK_PERIOD);
      r_iTx = 1; // data bit 2
      #(CLKS_PER_BIT_inst*CLOCK_PERIOD);
      r_iTx = 1; // data bit 3
      #(CLKS_PER_BIT_inst*CLOCK_PERIOD);
      r_iTx = 0; // data bit 4
      #(CLKS_PER_BIT_inst*CLOCK_PERIOD);
      r_iTx = 1; // data bit 5
      #(CLKS_PER_BIT_inst*CLOCK_PERIOD);
      r_iTx = 1; // data bit 6
      #(CLKS_PER_BIT_inst*CLOCK_PERIOD);
      r_iTx = 1; // data bit 7
      #(CLKS_PER_BIT_inst*CLOCK_PERIOD);
      r_iTx = 1; // stop bit
      #(CLKS_PER_BIT_inst*CLOCK_PERIOD);

      //-------------------------END-----------------------------/



      // Let it run for a while
      #(1000*CLOCK_PERIOD);
            
      $stop;
           
    end
   
endmodule