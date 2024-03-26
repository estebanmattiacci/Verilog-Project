`timescale 1ns / 1ps

module uart_top #(
    parameter   OPERAND_WIDTH = 512,
    parameter   ADDER_WIDTH   = 16,
    parameter   NBYTES        = OPERAND_WIDTH / 8,
    // Twice the amount for two operands
    parameter   NBYTES_TO_RECEIVE = NBYTES*2,
    // One more byte for the result
    parameter NBYTES_TO_SEND = NBYTES+1, 
    // values for the UART (in case we want to change them)
    parameter   CLK_FREQ      = 125_000_000,
    parameter   BAUD_RATE     = 115_200
  )  
  (
    input   wire   iClk, iRst,
    input   wire   iRx,
    output  wire   oTx
  );
  
  // Buffer to hold the operands and the result
  reg [NBYTES*8-1:0]         rA;
  reg [NBYTES*8-1:0]         rB;
  reg [NBYTES_TO_SEND*8-1:0] rRes;
  wire [NBYTES*8:0]          wRes;


  // Start and finish of the addition
  reg rAddStart;
  wire wAddDone;
  
  // State definition  
  localparam s_IDLE         = 3'b000;
  localparam s_RX           = 3'b001;
  localparam s_ADD          = 3'b010;
  localparam s_TX           = 3'b011;
  localparam s_WAIT_TX      = 3'b100;
   
  // Declare all variables needed for the finite state machine 
  // -> the FSM state
  reg [2:0]   rFSM;  
  
  // Connection to UART TX (inputs = registers, outputs = wires)
  reg         rTxStart;
  reg [7:0]   rTxByte;
  
  wire        wTxBusy;
  wire        wTxDone;
  
      
  uart_tx #(  .CLK_FREQ(CLK_FREQ), .BAUD_RATE(BAUD_RATE) )
  UART_TX_INST
    (.iClk(iClk),
     .iRst(iRst),
     .iTxStart(rTxStart),
     .iTxByte(rTxByte),
     .oTxSerial(oTx),
     .oTxBusy(wTxBusy),
     .oTxDone(wTxDone)
     );
     
 // Connection to UART RX
 wire [7:0]  w_oRxByte;
 wire        w_oRxDone;
 
 uart_rx #(  .CLK_FREQ(CLK_FREQ), .BAUD_RATE(BAUD_RATE) )
  UART_RX_INST
    (.iClk(iClk),
     .iRst(iRst),
     .iRxSerial(iRx),
     .oRxByte(w_oRxByte),
     .oRxDone(w_oRxDone)
     );


  mp_adder #( .OPERAND_WIDTH(OPERAND_WIDTH), .ADDER_WIDTH(ADDER_WIDTH) )
  mp_adder_INST
  ( .iClk(iClk), 
  .iRst(iRst), 
  .iStart(rAddStart), 
  .iOpA(rA), 
  .iOpB(rB), 
  .oRes(wRes), 
  .oDone(wAddDone) );
     
  reg [$clog2(NBYTES_TO_RECEIVE):0] rCnt;
  //reg [8:0] rCnt;

  always @(posedge iClk)
  begin
  
  // reset all registers upon reset
  if (iRst == 1 ) 
    begin
      rFSM <= s_IDLE;
      rTxStart <= 0;
      rCnt <= 0;
      rTxByte <= 0;
      rA <= 0;
      rB <= 0;
      rAddStart <= 0;
      rRes <= 0;
    end 
  else 
    begin
      case (rFSM)
   
        s_IDLE :
          begin
            rFSM <= s_RX;
            rCnt <= 0;            
          end
          

        s_RX :
          begin
            if (w_oRxDone == 1) 
              begin
                rCnt <= rCnt + 1;
                if(rCnt > (NBYTES - 1))
                begin
                  rB <= {rB[NBYTES*8-9:0] , w_oRxByte};
                  if(rCnt == (NBYTES_TO_RECEIVE - 1))
                  begin
                    rFSM <= s_ADD;
                    rAddStart <= 1;
                    rCnt <= 0;
                  end
                  else 
                  begin
                    rFSM <= s_RX;
                  end
                end
                else
                begin
                  rA <= {rA[NBYTES*8-9:0] , w_oRxByte};
                  rFSM <= s_RX;   
                end  
              end   
            else 
              begin
                rFSM <= s_RX;
              end
            end

        s_ADD :
          begin
            rAddStart <= 0; 
            if (wAddDone) begin
              rRes <= {7'b0000000,wRes};
              rFSM <= s_TX;
            end 
            else begin
              rFSM <= s_ADD;                   
            end
          end

        
        s_TX :
          begin
            if ( (rCnt < NBYTES_TO_SEND) && (wTxBusy ==0) ) 
              begin
                rFSM <= s_WAIT_TX;
                rTxStart <= 1; 
                rTxByte <= rRes[NBYTES_TO_SEND*8-1:NBYTES_TO_SEND*8-8];            // we send the uppermost byte
                rRes <= {rRes[NBYTES_TO_SEND*8-9:0] , 8'b0000_0000};    // we shift from right to left
                rCnt <= rCnt + 1;
              end 
            else 
              begin
                rFSM <= s_IDLE;
                rTxStart <= 0;
                rTxByte <= 0;
                rCnt <= 0;
              end
            end 
        
        
        /*  -------------------------------------TEST ONLY----------------------------------------
         WE USED THIS TX STATE FOR TESTING THE RECEPTION AND TRANSFER OF THE TWO OPERANDS
        s_TX :
          begin
            if ( (rCnt < NBYTES) && (wTxBusy ==0) ) 
              begin
                rFSM <= s_WAIT_TX;
                rTxStart <= 1; 
                rTxByte <= rA[NBYTES*8-1:NBYTES*8-8];            // we send the uppermost byte
                rA <= {rA[NBYTES*8-9:0] , 8'b0000_0000};    // we shift from right to left
                rCnt <= rCnt + 1;
              end 
            else 
              begin
                rFSM <= s_IDLE;
                rTxStart <= 0;
                rTxByte <= 0;
                rCnt <= 0;
              end
            end
           ----------------------------------------------------------------------------------------*/
           
            
        s_WAIT_TX :
          begin
            if (wTxDone) begin
              rFSM <= s_TX;
            end else begin
              rFSM <= s_WAIT_TX;
              rTxStart <= 0;                   
            end
          end               

        default :
          rFSM <= s_IDLE;
             
        endcase
      end
    end       
    
endmodule

