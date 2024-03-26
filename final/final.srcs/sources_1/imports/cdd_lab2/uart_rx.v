module uart_rx #(
  parameter   CLK_FREQ      = 125_000_000,
  parameter   BAUD_RATE     = 115_200,
  // Example: 125 MHz Clock / 115200 baud UART -> CLKS_PER_BIT = 1085 
  parameter   CLKS_PER_BIT  = CLK_FREQ / BAUD_RATE
)
(
  input wire        iClk, iRst,
  input wire        iRxSerial,
  output wire [7:0] oRxByte, 
  output wire       oRxDone
);

    // State definition  
    localparam sRX_IDLE       = 3'b000;
    localparam sRX_START      = 3'b001;
    localparam sRX_SAMPLING   = 3'b010;
    localparam sRX_DONE       = 3'b011;


    /* 1. Register variables required to drive the FSM
    ---------------------------------------------
    Remember:   -> 'current' is the register output
                -> 'next' is the register input   
                -> FSM state
    */
    reg [2:0] rFSM_Current, wFSM_Next; 

    // -> counter to keep track of the clock cycles
    reg [$clog2(CLKS_PER_BIT):0]   rCnt_Current, wCnt_Next;

    // -> counter to keep track of sent bits
    // (between 0 and 7)
    reg [3:0] rBit_Current, wBit_Next;

    // -> the byte we want to receive 
    reg [7:0] RXData_Current, RXData_Next;

    // Double-register the input wire to prevent metastability issues
    reg rRx1, rRx2;

    always @(posedge iClk)
    begin
        rRx1 <= iRxSerial;
        rRx2 <= rRx1;
    end
  
  
    /* 2. Describe all previous registers
    ------------------------------------------ 
        Needs to be done with a clocked always block 
        Don't forget the synchronous reset (default state)
    */
    always @(posedge iClk)
    begin
    if (iRst==1)
        begin
        rFSM_Current <= sRX_IDLE;
        rCnt_Current <= 0;
        rBit_Current <= 0;
        RXData_Current <= 0;
        end
    else
        begin
        rFSM_Current <= wFSM_Next;
        rCnt_Current <= wCnt_Next;
        rBit_Current <= wBit_Next;
        RXData_Current <= RXData_Next;
        end
    end

    
    /* 3. Next state logic
    ------------------------------------------ 
     -> this is a COMBINATIONAL module, which specifies the next state 
     of the FSM and also the next value of the previous registers
     -> to AVOID LATCHES, you need to make sure all the next register values
     ( rFSM_Next, rCnt_Next, rBit_Next, RXData_Next)
     are defined for every possible condition
    */
    always @(*)
    begin    
        case (rFSM_Current)
            // IDLE STATE:
            // We will start when rRx2 will be pulled down
            sRX_IDLE :
            begin
                wCnt_Next = 0;
                wBit_Next = 0;
                RXData_Next = RXData_Current;
                if (iRxSerial == 0)
                        wFSM_Next = sRX_START;
                else   
                        wFSM_Next = sRX_IDLE;
            end

            /* RX_START STATE:
             -> we stay here for the duration of half the start bit,
             which takes CLKS_PER_BIT/2 clock cycles
             -> we use rCnt_Current to keep track of clock cycles
            */ 
            sRX_START :
            begin
                wBit_Next = 0;
                RXData_Next = RXData_Current;
                
                if (rCnt_Current < ((CLKS_PER_BIT - 1)/2) )
                    begin
                    wFSM_Next = sRX_START;
                    wCnt_Next = rCnt_Current + 1;
                    end
                else
                    begin
                    wFSM_Next = sRX_SAMPLING;
                    wCnt_Next = 0;
                    end
                end

               
            sRX_SAMPLING :
            begin 
                if (rCnt_Current < (CLKS_PER_BIT - 1) )
                begin
                    wFSM_Next = sRX_SAMPLING;
                    wCnt_Next = rCnt_Current + 1;
                    RXData_Next = RXData_Current;
                    wBit_Next = rBit_Current;
                end
                else
                begin
                    wCnt_Next = 0;
                    
                    if (rBit_Current != 8) 
                    begin
                        wFSM_Next = sRX_SAMPLING;
                        wBit_Next = rBit_Current + 1;
                        RXData_Next = {rRx2, RXData_Current[7:1]}; 
                    end
                    else
                    begin
                        wFSM_Next = sRX_DONE; 
                        wBit_Next = 0;
                        RXData_Next = RXData_Current;
                    end
                end
            end


            /* RX_DONE STATE:
             We stay here for one clock cycle
             We set oRxDone to one and then leave
             If we have all our bits, we can go to the stop state
            */
            sRX_DONE :
                begin
                wBit_Next = 0;
                wCnt_Next = 0;
                wFSM_Next = sRX_IDLE;
                RXData_Next = RXData_Current;
                end


            default :
                begin
                    wFSM_Next = sRX_IDLE;
                    wCnt_Next = 0;
                    wBit_Next = 0;
                    RXData_Next = 0;
                end
        endcase
    end



    /* 4. Output logic
    ------------------------------------------ 
     -> these are COMBINATIONAL circuits, which specify the value of
     the outputs, based on the current state of the registers used
     in the FSM 
     Output the received byte out of the module
    */
    assign oRxByte = RXData_Current;

    // Output oRxDone 
    assign oRxDone = (rFSM_Current == sRX_DONE) ? 1 : 0; // Should be done

endmodule