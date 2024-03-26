// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Wed Apr  5 17:17:46 2023
// Host        : Beneficial-Laptop running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/mahmo/Desktop/cdd_lab2/lab2/lab2.srcs/sources_1/bd/design_1/ip/design_1_uart_top_0_0/design_1_uart_top_0_0_sim_netlist.v
// Design      : design_1_uart_top_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_uart_top_0_0,uart_top,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "uart_top,Vivado 2020.1" *) 
(* NotValidForBitStream *)
module design_1_uart_top_0_0
   (iClk,
    iRst,
    iRx,
    oTx);
  input iClk;
  input iRst;
  input iRx;
  output oTx;

  wire iClk;
  wire iRst;
  wire iRx;
  wire oTx;

  design_1_uart_top_0_0_uart_top inst
       (.iClk(iClk),
        .iRst(iRst),
        .iRx(iRx),
        .oTx(oTx));
endmodule

(* ORIG_REF_NAME = "uart_rx" *) 
module design_1_uart_top_0_0_uart_rx
   (Q,
    D,
    \rBuffer_reg[87] ,
    iRx,
    iClk,
    \FSM_sequential_rFSM_reg[1] ,
    \FSM_sequential_rFSM_reg[1]_0 ,
    \FSM_sequential_rFSM_reg[1]_1 ,
    \rBuffer_reg[95] ,
    iRst);
  output [0:0]Q;
  output [0:0]D;
  output [7:0]\rBuffer_reg[87] ;
  input iRx;
  input iClk;
  input [2:0]\FSM_sequential_rFSM_reg[1] ;
  input \FSM_sequential_rFSM_reg[1]_0 ;
  input [0:0]\FSM_sequential_rFSM_reg[1]_1 ;
  input [7:0]\rBuffer_reg[95] ;
  input iRst;

  wire [0:0]D;
  wire \FSM_onehot_rFSM_Current[0]_i_1__0_n_0 ;
  wire \FSM_onehot_rFSM_Current[1]_i_1__0_n_0 ;
  wire \FSM_onehot_rFSM_Current[2]_i_1__0_n_0 ;
  wire \FSM_onehot_rFSM_Current[2]_i_2_n_0 ;
  wire \FSM_onehot_rFSM_Current[3]_i_1__0_n_0 ;
  wire \FSM_onehot_rFSM_Current[3]_i_2_n_0 ;
  wire \FSM_onehot_rFSM_Current[3]_i_3_n_0 ;
  wire \FSM_onehot_rFSM_Current[3]_i_4_n_0 ;
  wire \FSM_onehot_rFSM_Current[4]_i_1__0_n_0 ;
  wire \FSM_onehot_rFSM_Current[4]_i_2__0_n_0 ;
  wire \FSM_onehot_rFSM_Current[4]_i_3__0_n_0 ;
  wire \FSM_onehot_rFSM_Current[4]_i_4_n_0 ;
  wire \FSM_onehot_rFSM_Current_reg_n_0_[0] ;
  wire \FSM_onehot_rFSM_Current_reg_n_0_[1] ;
  wire \FSM_onehot_rFSM_Current_reg_n_0_[2] ;
  wire \FSM_onehot_rFSM_Current_reg_n_0_[3] ;
  wire [2:0]\FSM_sequential_rFSM_reg[1] ;
  wire \FSM_sequential_rFSM_reg[1]_0 ;
  wire [0:0]\FSM_sequential_rFSM_reg[1]_1 ;
  wire [0:0]Q;
  wire [7:0]RXData_Current;
  wire \RXData_Current[0]_i_1_n_0 ;
  wire \RXData_Current[1]_i_1_n_0 ;
  wire \RXData_Current[2]_i_1_n_0 ;
  wire \RXData_Current[3]_i_1_n_0 ;
  wire \RXData_Current[4]_i_1_n_0 ;
  wire \RXData_Current[5]_i_1_n_0 ;
  wire \RXData_Current[6]_i_1_n_0 ;
  wire \RXData_Current[7]_i_2_n_0 ;
  wire RXData_Next;
  wire iClk;
  wire iRst;
  wire iRx;
  wire \rBit_Current[0]_i_1_n_0 ;
  wire \rBit_Current[1]_i_1_n_0 ;
  wire \rBit_Current[2]_i_1_n_0 ;
  wire \rBit_Current[3]_i_2_n_0 ;
  wire \rBit_Current_reg_n_0_[0] ;
  wire \rBit_Current_reg_n_0_[1] ;
  wire \rBit_Current_reg_n_0_[2] ;
  wire \rBit_Current_reg_n_0_[3] ;
  wire [7:0]\rBuffer_reg[87] ;
  wire [7:0]\rBuffer_reg[95] ;
  wire [11:0]rCnt_Current;
  wire \rCnt_Current[0]_i_1__0_n_0 ;
  wire \rCnt_Current[10]_i_1__0_n_0 ;
  wire \rCnt_Current[11]_i_1_n_0 ;
  wire \rCnt_Current[1]_i_1__0_n_0 ;
  wire \rCnt_Current[2]_i_1__0_n_0 ;
  wire \rCnt_Current[3]_i_1__0_n_0 ;
  wire \rCnt_Current[4]_i_1__0_n_0 ;
  wire \rCnt_Current[5]_i_1__0_n_0 ;
  wire \rCnt_Current[6]_i_1__0_n_0 ;
  wire \rCnt_Current[7]_i_1__0_n_0 ;
  wire \rCnt_Current[8]_i_1__0_n_0 ;
  wire \rCnt_Current[9]_i_1__0_n_0 ;
  wire rRx1;
  wire rRx2;
  wire wBit_Next;
  wire wCnt_Next0_carry__0_n_0;
  wire wCnt_Next0_carry__0_n_1;
  wire wCnt_Next0_carry__0_n_2;
  wire wCnt_Next0_carry__0_n_3;
  wire wCnt_Next0_carry__0_n_4;
  wire wCnt_Next0_carry__0_n_5;
  wire wCnt_Next0_carry__0_n_6;
  wire wCnt_Next0_carry__0_n_7;
  wire wCnt_Next0_carry__1_n_2;
  wire wCnt_Next0_carry__1_n_3;
  wire wCnt_Next0_carry__1_n_5;
  wire wCnt_Next0_carry__1_n_6;
  wire wCnt_Next0_carry__1_n_7;
  wire wCnt_Next0_carry_n_0;
  wire wCnt_Next0_carry_n_1;
  wire wCnt_Next0_carry_n_2;
  wire wCnt_Next0_carry_n_3;
  wire wCnt_Next0_carry_n_4;
  wire wCnt_Next0_carry_n_5;
  wire wCnt_Next0_carry_n_6;
  wire wCnt_Next0_carry_n_7;
  wire [3:2]NLW_wCnt_Next0_carry__1_CO_UNCONNECTED;
  wire [3:3]NLW_wCnt_Next0_carry__1_O_UNCONNECTED;

  LUT3 #(
    .INIT(8'hF8)) 
    \FSM_onehot_rFSM_Current[0]_i_1__0 
       (.I0(rRx2),
        .I1(\FSM_onehot_rFSM_Current_reg_n_0_[0] ),
        .I2(Q),
        .O(\FSM_onehot_rFSM_Current[0]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'h8F88)) 
    \FSM_onehot_rFSM_Current[1]_i_1__0 
       (.I0(\FSM_onehot_rFSM_Current[4]_i_2__0_n_0 ),
        .I1(\FSM_onehot_rFSM_Current_reg_n_0_[1] ),
        .I2(rRx2),
        .I3(\FSM_onehot_rFSM_Current_reg_n_0_[0] ),
        .O(\FSM_onehot_rFSM_Current[1]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'hEAFFEAEA)) 
    \FSM_onehot_rFSM_Current[2]_i_1__0 
       (.I0(\FSM_onehot_rFSM_Current[2]_i_2_n_0 ),
        .I1(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .I2(\FSM_onehot_rFSM_Current[3]_i_2_n_0 ),
        .I3(\FSM_onehot_rFSM_Current[4]_i_2__0_n_0 ),
        .I4(\FSM_onehot_rFSM_Current_reg_n_0_[1] ),
        .O(\FSM_onehot_rFSM_Current[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hAAAAAA8A)) 
    \FSM_onehot_rFSM_Current[2]_i_2 
       (.I0(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .I1(\rBit_Current_reg_n_0_[0] ),
        .I2(\rBit_Current_reg_n_0_[3] ),
        .I3(\rBit_Current_reg_n_0_[1] ),
        .I4(\rBit_Current_reg_n_0_[2] ),
        .O(\FSM_onehot_rFSM_Current[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFF040404)) 
    \FSM_onehot_rFSM_Current[3]_i_1__0 
       (.I0(\FSM_onehot_rFSM_Current[3]_i_2_n_0 ),
        .I1(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .I2(\FSM_onehot_rFSM_Current[3]_i_3_n_0 ),
        .I3(\FSM_onehot_rFSM_Current[4]_i_2__0_n_0 ),
        .I4(\FSM_onehot_rFSM_Current_reg_n_0_[3] ),
        .O(\FSM_onehot_rFSM_Current[3]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'hB0B0B0FF)) 
    \FSM_onehot_rFSM_Current[3]_i_2 
       (.I0(\FSM_onehot_rFSM_Current[4]_i_4_n_0 ),
        .I1(rCnt_Current[5]),
        .I2(\FSM_onehot_rFSM_Current[3]_i_4_n_0 ),
        .I3(rCnt_Current[10]),
        .I4(rCnt_Current[11]),
        .O(\FSM_onehot_rFSM_Current[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hFFEF)) 
    \FSM_onehot_rFSM_Current[3]_i_3 
       (.I0(\rBit_Current_reg_n_0_[2] ),
        .I1(\rBit_Current_reg_n_0_[1] ),
        .I2(\rBit_Current_reg_n_0_[3] ),
        .I3(\rBit_Current_reg_n_0_[0] ),
        .O(\FSM_onehot_rFSM_Current[3]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \FSM_onehot_rFSM_Current[3]_i_4 
       (.I0(rCnt_Current[11]),
        .I1(rCnt_Current[6]),
        .I2(rCnt_Current[7]),
        .I3(rCnt_Current[9]),
        .I4(rCnt_Current[8]),
        .O(\FSM_onehot_rFSM_Current[3]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_onehot_rFSM_Current[4]_i_1__0 
       (.I0(\FSM_onehot_rFSM_Current_reg_n_0_[3] ),
        .I1(\FSM_onehot_rFSM_Current[4]_i_2__0_n_0 ),
        .O(\FSM_onehot_rFSM_Current[4]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h1101110101011101)) 
    \FSM_onehot_rFSM_Current[4]_i_2__0 
       (.I0(rCnt_Current[11]),
        .I1(rCnt_Current[10]),
        .I2(rCnt_Current[9]),
        .I3(\FSM_onehot_rFSM_Current[4]_i_3__0_n_0 ),
        .I4(rCnt_Current[1]),
        .I5(\FSM_onehot_rFSM_Current[4]_i_4_n_0 ),
        .O(\FSM_onehot_rFSM_Current[4]_i_2__0_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \FSM_onehot_rFSM_Current[4]_i_3__0 
       (.I0(rCnt_Current[6]),
        .I1(rCnt_Current[5]),
        .I2(rCnt_Current[8]),
        .I3(rCnt_Current[7]),
        .O(\FSM_onehot_rFSM_Current[4]_i_3__0_n_0 ));
  LUT3 #(
    .INIT(8'h7F)) 
    \FSM_onehot_rFSM_Current[4]_i_4 
       (.I0(rCnt_Current[3]),
        .I1(rCnt_Current[2]),
        .I2(rCnt_Current[4]),
        .O(\FSM_onehot_rFSM_Current[4]_i_4_n_0 ));
  (* FSM_ENCODED_STATES = "sRX_IDLE:00001,sRX_START:00010,sRX_SAMPLING:00100,sRX_DONE:10000,sRX_STOP:01000" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_rFSM_Current_reg[0] 
       (.C(iClk),
        .CE(1'b1),
        .D(\FSM_onehot_rFSM_Current[0]_i_1__0_n_0 ),
        .Q(\FSM_onehot_rFSM_Current_reg_n_0_[0] ),
        .S(iRst));
  (* FSM_ENCODED_STATES = "sRX_IDLE:00001,sRX_START:00010,sRX_SAMPLING:00100,sRX_DONE:10000,sRX_STOP:01000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_rFSM_Current_reg[1] 
       (.C(iClk),
        .CE(1'b1),
        .D(\FSM_onehot_rFSM_Current[1]_i_1__0_n_0 ),
        .Q(\FSM_onehot_rFSM_Current_reg_n_0_[1] ),
        .R(iRst));
  (* FSM_ENCODED_STATES = "sRX_IDLE:00001,sRX_START:00010,sRX_SAMPLING:00100,sRX_DONE:10000,sRX_STOP:01000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_rFSM_Current_reg[2] 
       (.C(iClk),
        .CE(1'b1),
        .D(\FSM_onehot_rFSM_Current[2]_i_1__0_n_0 ),
        .Q(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .R(iRst));
  (* FSM_ENCODED_STATES = "sRX_IDLE:00001,sRX_START:00010,sRX_SAMPLING:00100,sRX_DONE:10000,sRX_STOP:01000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_rFSM_Current_reg[3] 
       (.C(iClk),
        .CE(1'b1),
        .D(\FSM_onehot_rFSM_Current[3]_i_1__0_n_0 ),
        .Q(\FSM_onehot_rFSM_Current_reg_n_0_[3] ),
        .R(iRst));
  (* FSM_ENCODED_STATES = "sRX_IDLE:00001,sRX_START:00010,sRX_SAMPLING:00100,sRX_DONE:10000,sRX_STOP:01000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_rFSM_Current_reg[4] 
       (.C(iClk),
        .CE(1'b1),
        .D(\FSM_onehot_rFSM_Current[4]_i_1__0_n_0 ),
        .Q(Q),
        .R(iRst));
  LUT6 #(
    .INIT(64'hFFFF460200004602)) 
    \FSM_sequential_rFSM[1]_i_1 
       (.I0(\FSM_sequential_rFSM_reg[1] [1]),
        .I1(\FSM_sequential_rFSM_reg[1] [0]),
        .I2(\FSM_sequential_rFSM_reg[1]_0 ),
        .I3(Q),
        .I4(\FSM_sequential_rFSM_reg[1] [2]),
        .I5(\FSM_sequential_rFSM_reg[1]_1 ),
        .O(D));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \RXData_Current[0]_i_1 
       (.I0(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .I1(RXData_Current[1]),
        .O(\RXData_Current[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \RXData_Current[1]_i_1 
       (.I0(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .I1(RXData_Current[2]),
        .O(\RXData_Current[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \RXData_Current[2]_i_1 
       (.I0(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .I1(RXData_Current[3]),
        .O(\RXData_Current[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \RXData_Current[3]_i_1 
       (.I0(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .I1(RXData_Current[4]),
        .O(\RXData_Current[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \RXData_Current[4]_i_1 
       (.I0(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .I1(RXData_Current[5]),
        .O(\RXData_Current[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \RXData_Current[5]_i_1 
       (.I0(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .I1(RXData_Current[6]),
        .O(\RXData_Current[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \RXData_Current[6]_i_1 
       (.I0(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .I1(RXData_Current[7]),
        .O(\RXData_Current[6]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hF4)) 
    \RXData_Current[7]_i_1 
       (.I0(\FSM_onehot_rFSM_Current[3]_i_2_n_0 ),
        .I1(\FSM_onehot_rFSM_Current[2]_i_2_n_0 ),
        .I2(\FSM_onehot_rFSM_Current_reg_n_0_[1] ),
        .O(RXData_Next));
  LUT2 #(
    .INIT(4'h8)) 
    \RXData_Current[7]_i_2 
       (.I0(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .I1(rRx2),
        .O(\RXData_Current[7]_i_2_n_0 ));
  FDRE \RXData_Current_reg[0] 
       (.C(iClk),
        .CE(RXData_Next),
        .D(\RXData_Current[0]_i_1_n_0 ),
        .Q(RXData_Current[0]),
        .R(iRst));
  FDRE \RXData_Current_reg[1] 
       (.C(iClk),
        .CE(RXData_Next),
        .D(\RXData_Current[1]_i_1_n_0 ),
        .Q(RXData_Current[1]),
        .R(iRst));
  FDRE \RXData_Current_reg[2] 
       (.C(iClk),
        .CE(RXData_Next),
        .D(\RXData_Current[2]_i_1_n_0 ),
        .Q(RXData_Current[2]),
        .R(iRst));
  FDRE \RXData_Current_reg[3] 
       (.C(iClk),
        .CE(RXData_Next),
        .D(\RXData_Current[3]_i_1_n_0 ),
        .Q(RXData_Current[3]),
        .R(iRst));
  FDRE \RXData_Current_reg[4] 
       (.C(iClk),
        .CE(RXData_Next),
        .D(\RXData_Current[4]_i_1_n_0 ),
        .Q(RXData_Current[4]),
        .R(iRst));
  FDRE \RXData_Current_reg[5] 
       (.C(iClk),
        .CE(RXData_Next),
        .D(\RXData_Current[5]_i_1_n_0 ),
        .Q(RXData_Current[5]),
        .R(iRst));
  FDRE \RXData_Current_reg[6] 
       (.C(iClk),
        .CE(RXData_Next),
        .D(\RXData_Current[6]_i_1_n_0 ),
        .Q(RXData_Current[6]),
        .R(iRst));
  FDRE \RXData_Current_reg[7] 
       (.C(iClk),
        .CE(RXData_Next),
        .D(\RXData_Current[7]_i_2_n_0 ),
        .Q(RXData_Current[7]),
        .R(iRst));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h0000EF00)) 
    \rBit_Current[0]_i_1 
       (.I0(\rBit_Current_reg_n_0_[2] ),
        .I1(\rBit_Current_reg_n_0_[1] ),
        .I2(\rBit_Current_reg_n_0_[3] ),
        .I3(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .I4(\rBit_Current_reg_n_0_[0] ),
        .O(\rBit_Current[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \rBit_Current[1]_i_1 
       (.I0(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .I1(\rBit_Current_reg_n_0_[0] ),
        .I2(\rBit_Current_reg_n_0_[1] ),
        .O(\rBit_Current[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h2A80)) 
    \rBit_Current[2]_i_1 
       (.I0(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .I1(\rBit_Current_reg_n_0_[0] ),
        .I2(\rBit_Current_reg_n_0_[1] ),
        .I3(\rBit_Current_reg_n_0_[2] ),
        .O(\rBit_Current[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFEFFFEFE)) 
    \rBit_Current[3]_i_1 
       (.I0(\FSM_onehot_rFSM_Current_reg_n_0_[1] ),
        .I1(\FSM_onehot_rFSM_Current_reg_n_0_[0] ),
        .I2(Q),
        .I3(\FSM_onehot_rFSM_Current[3]_i_2_n_0 ),
        .I4(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .O(wBit_Next));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h7E008000)) 
    \rBit_Current[3]_i_2 
       (.I0(\rBit_Current_reg_n_0_[0] ),
        .I1(\rBit_Current_reg_n_0_[1] ),
        .I2(\rBit_Current_reg_n_0_[2] ),
        .I3(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .I4(\rBit_Current_reg_n_0_[3] ),
        .O(\rBit_Current[3]_i_2_n_0 ));
  FDRE \rBit_Current_reg[0] 
       (.C(iClk),
        .CE(wBit_Next),
        .D(\rBit_Current[0]_i_1_n_0 ),
        .Q(\rBit_Current_reg_n_0_[0] ),
        .R(iRst));
  FDRE \rBit_Current_reg[1] 
       (.C(iClk),
        .CE(wBit_Next),
        .D(\rBit_Current[1]_i_1_n_0 ),
        .Q(\rBit_Current_reg_n_0_[1] ),
        .R(iRst));
  FDRE \rBit_Current_reg[2] 
       (.C(iClk),
        .CE(wBit_Next),
        .D(\rBit_Current[2]_i_1_n_0 ),
        .Q(\rBit_Current_reg_n_0_[2] ),
        .R(iRst));
  FDRE \rBit_Current_reg[3] 
       (.C(iClk),
        .CE(wBit_Next),
        .D(\rBit_Current[3]_i_2_n_0 ),
        .Q(\rBit_Current_reg_n_0_[3] ),
        .R(iRst));
  LUT4 #(
    .INIT(16'h00AC)) 
    \rBuffer[88]_i_1 
       (.I0(\rBuffer_reg[95] [0]),
        .I1(RXData_Current[0]),
        .I2(\FSM_sequential_rFSM_reg[1] [0]),
        .I3(\FSM_sequential_rFSM_reg[1] [2]),
        .O(\rBuffer_reg[87] [0]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h00AC)) 
    \rBuffer[89]_i_1 
       (.I0(\rBuffer_reg[95] [1]),
        .I1(RXData_Current[1]),
        .I2(\FSM_sequential_rFSM_reg[1] [0]),
        .I3(\FSM_sequential_rFSM_reg[1] [2]),
        .O(\rBuffer_reg[87] [1]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h00AC)) 
    \rBuffer[90]_i_1 
       (.I0(\rBuffer_reg[95] [2]),
        .I1(RXData_Current[2]),
        .I2(\FSM_sequential_rFSM_reg[1] [0]),
        .I3(\FSM_sequential_rFSM_reg[1] [2]),
        .O(\rBuffer_reg[87] [2]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h00AC)) 
    \rBuffer[91]_i_1 
       (.I0(\rBuffer_reg[95] [3]),
        .I1(RXData_Current[3]),
        .I2(\FSM_sequential_rFSM_reg[1] [0]),
        .I3(\FSM_sequential_rFSM_reg[1] [2]),
        .O(\rBuffer_reg[87] [3]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h00AC)) 
    \rBuffer[92]_i_1 
       (.I0(\rBuffer_reg[95] [4]),
        .I1(RXData_Current[4]),
        .I2(\FSM_sequential_rFSM_reg[1] [0]),
        .I3(\FSM_sequential_rFSM_reg[1] [2]),
        .O(\rBuffer_reg[87] [4]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h00AC)) 
    \rBuffer[93]_i_1 
       (.I0(\rBuffer_reg[95] [5]),
        .I1(RXData_Current[5]),
        .I2(\FSM_sequential_rFSM_reg[1] [0]),
        .I3(\FSM_sequential_rFSM_reg[1] [2]),
        .O(\rBuffer_reg[87] [5]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h00AC)) 
    \rBuffer[94]_i_1 
       (.I0(\rBuffer_reg[95] [6]),
        .I1(RXData_Current[6]),
        .I2(\FSM_sequential_rFSM_reg[1] [0]),
        .I3(\FSM_sequential_rFSM_reg[1] [2]),
        .O(\rBuffer_reg[87] [6]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h00AC)) 
    \rBuffer[95]_i_2 
       (.I0(\rBuffer_reg[95] [7]),
        .I1(RXData_Current[7]),
        .I2(\FSM_sequential_rFSM_reg[1] [0]),
        .I3(\FSM_sequential_rFSM_reg[1] [2]),
        .O(\rBuffer_reg[87] [7]));
  LUT6 #(
    .INIT(64'h00000000FCCCF888)) 
    \rCnt_Current[0]_i_1__0 
       (.I0(\FSM_onehot_rFSM_Current_reg_n_0_[1] ),
        .I1(\FSM_onehot_rFSM_Current[4]_i_2__0_n_0 ),
        .I2(\FSM_onehot_rFSM_Current[3]_i_2_n_0 ),
        .I3(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .I4(\FSM_onehot_rFSM_Current_reg_n_0_[3] ),
        .I5(rCnt_Current[0]),
        .O(\rCnt_Current[0]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFCCCF88800000000)) 
    \rCnt_Current[10]_i_1__0 
       (.I0(\FSM_onehot_rFSM_Current_reg_n_0_[1] ),
        .I1(\FSM_onehot_rFSM_Current[4]_i_2__0_n_0 ),
        .I2(\FSM_onehot_rFSM_Current[3]_i_2_n_0 ),
        .I3(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .I4(\FSM_onehot_rFSM_Current_reg_n_0_[3] ),
        .I5(wCnt_Next0_carry__1_n_6),
        .O(\rCnt_Current[10]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFCCCF88800000000)) 
    \rCnt_Current[11]_i_1 
       (.I0(\FSM_onehot_rFSM_Current_reg_n_0_[1] ),
        .I1(\FSM_onehot_rFSM_Current[4]_i_2__0_n_0 ),
        .I2(\FSM_onehot_rFSM_Current[3]_i_2_n_0 ),
        .I3(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .I4(\FSM_onehot_rFSM_Current_reg_n_0_[3] ),
        .I5(wCnt_Next0_carry__1_n_5),
        .O(\rCnt_Current[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFCCCF88800000000)) 
    \rCnt_Current[1]_i_1__0 
       (.I0(\FSM_onehot_rFSM_Current_reg_n_0_[1] ),
        .I1(\FSM_onehot_rFSM_Current[4]_i_2__0_n_0 ),
        .I2(\FSM_onehot_rFSM_Current[3]_i_2_n_0 ),
        .I3(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .I4(\FSM_onehot_rFSM_Current_reg_n_0_[3] ),
        .I5(wCnt_Next0_carry_n_7),
        .O(\rCnt_Current[1]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFCCCF88800000000)) 
    \rCnt_Current[2]_i_1__0 
       (.I0(\FSM_onehot_rFSM_Current_reg_n_0_[1] ),
        .I1(\FSM_onehot_rFSM_Current[4]_i_2__0_n_0 ),
        .I2(\FSM_onehot_rFSM_Current[3]_i_2_n_0 ),
        .I3(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .I4(\FSM_onehot_rFSM_Current_reg_n_0_[3] ),
        .I5(wCnt_Next0_carry_n_6),
        .O(\rCnt_Current[2]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFCCCF88800000000)) 
    \rCnt_Current[3]_i_1__0 
       (.I0(\FSM_onehot_rFSM_Current_reg_n_0_[1] ),
        .I1(\FSM_onehot_rFSM_Current[4]_i_2__0_n_0 ),
        .I2(\FSM_onehot_rFSM_Current[3]_i_2_n_0 ),
        .I3(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .I4(\FSM_onehot_rFSM_Current_reg_n_0_[3] ),
        .I5(wCnt_Next0_carry_n_5),
        .O(\rCnt_Current[3]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFCCCF88800000000)) 
    \rCnt_Current[4]_i_1__0 
       (.I0(\FSM_onehot_rFSM_Current_reg_n_0_[1] ),
        .I1(\FSM_onehot_rFSM_Current[4]_i_2__0_n_0 ),
        .I2(\FSM_onehot_rFSM_Current[3]_i_2_n_0 ),
        .I3(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .I4(\FSM_onehot_rFSM_Current_reg_n_0_[3] ),
        .I5(wCnt_Next0_carry_n_4),
        .O(\rCnt_Current[4]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFCCCF88800000000)) 
    \rCnt_Current[5]_i_1__0 
       (.I0(\FSM_onehot_rFSM_Current_reg_n_0_[1] ),
        .I1(\FSM_onehot_rFSM_Current[4]_i_2__0_n_0 ),
        .I2(\FSM_onehot_rFSM_Current[3]_i_2_n_0 ),
        .I3(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .I4(\FSM_onehot_rFSM_Current_reg_n_0_[3] ),
        .I5(wCnt_Next0_carry__0_n_7),
        .O(\rCnt_Current[5]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFCCCF88800000000)) 
    \rCnt_Current[6]_i_1__0 
       (.I0(\FSM_onehot_rFSM_Current_reg_n_0_[1] ),
        .I1(\FSM_onehot_rFSM_Current[4]_i_2__0_n_0 ),
        .I2(\FSM_onehot_rFSM_Current[3]_i_2_n_0 ),
        .I3(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .I4(\FSM_onehot_rFSM_Current_reg_n_0_[3] ),
        .I5(wCnt_Next0_carry__0_n_6),
        .O(\rCnt_Current[6]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFCCCF88800000000)) 
    \rCnt_Current[7]_i_1__0 
       (.I0(\FSM_onehot_rFSM_Current_reg_n_0_[1] ),
        .I1(\FSM_onehot_rFSM_Current[4]_i_2__0_n_0 ),
        .I2(\FSM_onehot_rFSM_Current[3]_i_2_n_0 ),
        .I3(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .I4(\FSM_onehot_rFSM_Current_reg_n_0_[3] ),
        .I5(wCnt_Next0_carry__0_n_5),
        .O(\rCnt_Current[7]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFCCCF88800000000)) 
    \rCnt_Current[8]_i_1__0 
       (.I0(\FSM_onehot_rFSM_Current_reg_n_0_[1] ),
        .I1(\FSM_onehot_rFSM_Current[4]_i_2__0_n_0 ),
        .I2(\FSM_onehot_rFSM_Current[3]_i_2_n_0 ),
        .I3(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .I4(\FSM_onehot_rFSM_Current_reg_n_0_[3] ),
        .I5(wCnt_Next0_carry__0_n_4),
        .O(\rCnt_Current[8]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFCCCF88800000000)) 
    \rCnt_Current[9]_i_1__0 
       (.I0(\FSM_onehot_rFSM_Current_reg_n_0_[1] ),
        .I1(\FSM_onehot_rFSM_Current[4]_i_2__0_n_0 ),
        .I2(\FSM_onehot_rFSM_Current[3]_i_2_n_0 ),
        .I3(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .I4(\FSM_onehot_rFSM_Current_reg_n_0_[3] ),
        .I5(wCnt_Next0_carry__1_n_7),
        .O(\rCnt_Current[9]_i_1__0_n_0 ));
  FDRE \rCnt_Current_reg[0] 
       (.C(iClk),
        .CE(1'b1),
        .D(\rCnt_Current[0]_i_1__0_n_0 ),
        .Q(rCnt_Current[0]),
        .R(iRst));
  FDRE \rCnt_Current_reg[10] 
       (.C(iClk),
        .CE(1'b1),
        .D(\rCnt_Current[10]_i_1__0_n_0 ),
        .Q(rCnt_Current[10]),
        .R(iRst));
  FDRE \rCnt_Current_reg[11] 
       (.C(iClk),
        .CE(1'b1),
        .D(\rCnt_Current[11]_i_1_n_0 ),
        .Q(rCnt_Current[11]),
        .R(iRst));
  FDRE \rCnt_Current_reg[1] 
       (.C(iClk),
        .CE(1'b1),
        .D(\rCnt_Current[1]_i_1__0_n_0 ),
        .Q(rCnt_Current[1]),
        .R(iRst));
  FDRE \rCnt_Current_reg[2] 
       (.C(iClk),
        .CE(1'b1),
        .D(\rCnt_Current[2]_i_1__0_n_0 ),
        .Q(rCnt_Current[2]),
        .R(iRst));
  FDRE \rCnt_Current_reg[3] 
       (.C(iClk),
        .CE(1'b1),
        .D(\rCnt_Current[3]_i_1__0_n_0 ),
        .Q(rCnt_Current[3]),
        .R(iRst));
  FDRE \rCnt_Current_reg[4] 
       (.C(iClk),
        .CE(1'b1),
        .D(\rCnt_Current[4]_i_1__0_n_0 ),
        .Q(rCnt_Current[4]),
        .R(iRst));
  FDRE \rCnt_Current_reg[5] 
       (.C(iClk),
        .CE(1'b1),
        .D(\rCnt_Current[5]_i_1__0_n_0 ),
        .Q(rCnt_Current[5]),
        .R(iRst));
  FDRE \rCnt_Current_reg[6] 
       (.C(iClk),
        .CE(1'b1),
        .D(\rCnt_Current[6]_i_1__0_n_0 ),
        .Q(rCnt_Current[6]),
        .R(iRst));
  FDRE \rCnt_Current_reg[7] 
       (.C(iClk),
        .CE(1'b1),
        .D(\rCnt_Current[7]_i_1__0_n_0 ),
        .Q(rCnt_Current[7]),
        .R(iRst));
  FDRE \rCnt_Current_reg[8] 
       (.C(iClk),
        .CE(1'b1),
        .D(\rCnt_Current[8]_i_1__0_n_0 ),
        .Q(rCnt_Current[8]),
        .R(iRst));
  FDRE \rCnt_Current_reg[9] 
       (.C(iClk),
        .CE(1'b1),
        .D(\rCnt_Current[9]_i_1__0_n_0 ),
        .Q(rCnt_Current[9]),
        .R(iRst));
  FDRE rRx1_reg
       (.C(iClk),
        .CE(1'b1),
        .D(iRx),
        .Q(rRx1),
        .R(1'b0));
  FDRE rRx2_reg
       (.C(iClk),
        .CE(1'b1),
        .D(rRx1),
        .Q(rRx2),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 wCnt_Next0_carry
       (.CI(1'b0),
        .CO({wCnt_Next0_carry_n_0,wCnt_Next0_carry_n_1,wCnt_Next0_carry_n_2,wCnt_Next0_carry_n_3}),
        .CYINIT(rCnt_Current[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({wCnt_Next0_carry_n_4,wCnt_Next0_carry_n_5,wCnt_Next0_carry_n_6,wCnt_Next0_carry_n_7}),
        .S(rCnt_Current[4:1]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 wCnt_Next0_carry__0
       (.CI(wCnt_Next0_carry_n_0),
        .CO({wCnt_Next0_carry__0_n_0,wCnt_Next0_carry__0_n_1,wCnt_Next0_carry__0_n_2,wCnt_Next0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({wCnt_Next0_carry__0_n_4,wCnt_Next0_carry__0_n_5,wCnt_Next0_carry__0_n_6,wCnt_Next0_carry__0_n_7}),
        .S(rCnt_Current[8:5]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 wCnt_Next0_carry__1
       (.CI(wCnt_Next0_carry__0_n_0),
        .CO({NLW_wCnt_Next0_carry__1_CO_UNCONNECTED[3:2],wCnt_Next0_carry__1_n_2,wCnt_Next0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_wCnt_Next0_carry__1_O_UNCONNECTED[3],wCnt_Next0_carry__1_n_5,wCnt_Next0_carry__1_n_6,wCnt_Next0_carry__1_n_7}),
        .S({1'b0,rCnt_Current[11:9]}));
endmodule

(* ORIG_REF_NAME = "uart_top" *) 
module design_1_uart_top_0_0_uart_top
   (oTx,
    iRst,
    iClk,
    iRx);
  output oTx;
  input iRst;
  input iClk;
  input iRx;

  wire \FSM_sequential_rFSM[1]_i_2_n_0 ;
  wire UART_TX_INST_n_11;
  wire UART_TX_INST_n_12;
  wire UART_TX_INST_n_13;
  wire UART_TX_INST_n_14;
  wire UART_TX_INST_n_15;
  wire UART_TX_INST_n_18;
  wire iClk;
  wire iRst;
  wire iRx;
  wire oTx;
  wire [7:0]p_0_in;
  wire [95:0]rBuffer;
  wire rBuffer_0;
  wire \rBuffer_reg_n_0_[0] ;
  wire \rBuffer_reg_n_0_[10] ;
  wire \rBuffer_reg_n_0_[11] ;
  wire \rBuffer_reg_n_0_[12] ;
  wire \rBuffer_reg_n_0_[13] ;
  wire \rBuffer_reg_n_0_[14] ;
  wire \rBuffer_reg_n_0_[15] ;
  wire \rBuffer_reg_n_0_[16] ;
  wire \rBuffer_reg_n_0_[17] ;
  wire \rBuffer_reg_n_0_[18] ;
  wire \rBuffer_reg_n_0_[19] ;
  wire \rBuffer_reg_n_0_[1] ;
  wire \rBuffer_reg_n_0_[20] ;
  wire \rBuffer_reg_n_0_[21] ;
  wire \rBuffer_reg_n_0_[22] ;
  wire \rBuffer_reg_n_0_[23] ;
  wire \rBuffer_reg_n_0_[24] ;
  wire \rBuffer_reg_n_0_[25] ;
  wire \rBuffer_reg_n_0_[26] ;
  wire \rBuffer_reg_n_0_[27] ;
  wire \rBuffer_reg_n_0_[28] ;
  wire \rBuffer_reg_n_0_[29] ;
  wire \rBuffer_reg_n_0_[2] ;
  wire \rBuffer_reg_n_0_[30] ;
  wire \rBuffer_reg_n_0_[31] ;
  wire \rBuffer_reg_n_0_[32] ;
  wire \rBuffer_reg_n_0_[33] ;
  wire \rBuffer_reg_n_0_[34] ;
  wire \rBuffer_reg_n_0_[35] ;
  wire \rBuffer_reg_n_0_[36] ;
  wire \rBuffer_reg_n_0_[37] ;
  wire \rBuffer_reg_n_0_[38] ;
  wire \rBuffer_reg_n_0_[39] ;
  wire \rBuffer_reg_n_0_[3] ;
  wire \rBuffer_reg_n_0_[40] ;
  wire \rBuffer_reg_n_0_[41] ;
  wire \rBuffer_reg_n_0_[42] ;
  wire \rBuffer_reg_n_0_[43] ;
  wire \rBuffer_reg_n_0_[44] ;
  wire \rBuffer_reg_n_0_[45] ;
  wire \rBuffer_reg_n_0_[46] ;
  wire \rBuffer_reg_n_0_[47] ;
  wire \rBuffer_reg_n_0_[48] ;
  wire \rBuffer_reg_n_0_[49] ;
  wire \rBuffer_reg_n_0_[4] ;
  wire \rBuffer_reg_n_0_[50] ;
  wire \rBuffer_reg_n_0_[51] ;
  wire \rBuffer_reg_n_0_[52] ;
  wire \rBuffer_reg_n_0_[53] ;
  wire \rBuffer_reg_n_0_[54] ;
  wire \rBuffer_reg_n_0_[55] ;
  wire \rBuffer_reg_n_0_[56] ;
  wire \rBuffer_reg_n_0_[57] ;
  wire \rBuffer_reg_n_0_[58] ;
  wire \rBuffer_reg_n_0_[59] ;
  wire \rBuffer_reg_n_0_[5] ;
  wire \rBuffer_reg_n_0_[60] ;
  wire \rBuffer_reg_n_0_[61] ;
  wire \rBuffer_reg_n_0_[62] ;
  wire \rBuffer_reg_n_0_[63] ;
  wire \rBuffer_reg_n_0_[64] ;
  wire \rBuffer_reg_n_0_[65] ;
  wire \rBuffer_reg_n_0_[66] ;
  wire \rBuffer_reg_n_0_[67] ;
  wire \rBuffer_reg_n_0_[68] ;
  wire \rBuffer_reg_n_0_[69] ;
  wire \rBuffer_reg_n_0_[6] ;
  wire \rBuffer_reg_n_0_[70] ;
  wire \rBuffer_reg_n_0_[71] ;
  wire \rBuffer_reg_n_0_[72] ;
  wire \rBuffer_reg_n_0_[73] ;
  wire \rBuffer_reg_n_0_[74] ;
  wire \rBuffer_reg_n_0_[75] ;
  wire \rBuffer_reg_n_0_[76] ;
  wire \rBuffer_reg_n_0_[77] ;
  wire \rBuffer_reg_n_0_[78] ;
  wire \rBuffer_reg_n_0_[79] ;
  wire \rBuffer_reg_n_0_[7] ;
  wire \rBuffer_reg_n_0_[80] ;
  wire \rBuffer_reg_n_0_[81] ;
  wire \rBuffer_reg_n_0_[82] ;
  wire \rBuffer_reg_n_0_[83] ;
  wire \rBuffer_reg_n_0_[84] ;
  wire \rBuffer_reg_n_0_[85] ;
  wire \rBuffer_reg_n_0_[86] ;
  wire \rBuffer_reg_n_0_[87] ;
  wire \rBuffer_reg_n_0_[88] ;
  wire \rBuffer_reg_n_0_[89] ;
  wire \rBuffer_reg_n_0_[8] ;
  wire \rBuffer_reg_n_0_[90] ;
  wire \rBuffer_reg_n_0_[91] ;
  wire \rBuffer_reg_n_0_[92] ;
  wire \rBuffer_reg_n_0_[93] ;
  wire \rBuffer_reg_n_0_[94] ;
  wire \rBuffer_reg_n_0_[95] ;
  wire \rBuffer_reg_n_0_[9] ;
  wire rCnt;
  wire \rCnt_reg_n_0_[0] ;
  wire \rCnt_reg_n_0_[1] ;
  wire \rCnt_reg_n_0_[2] ;
  wire \rCnt_reg_n_0_[3] ;
  wire \rCnt_reg_n_0_[4] ;
  wire [2:0]rFSM;
  wire [2:0]rFSM__0;
  wire [7:0]rTxByte;
  wire rTxByte_1;
  wire rTxStart_reg_n_0;
  wire wTxDone;
  wire w_oRxDone;

  LUT3 #(
    .INIT(8'h07)) 
    \FSM_sequential_rFSM[1]_i_2 
       (.I0(\rCnt_reg_n_0_[2] ),
        .I1(\rCnt_reg_n_0_[3] ),
        .I2(\rCnt_reg_n_0_[4] ),
        .O(\FSM_sequential_rFSM[1]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "s_WAIT_RX:001,s_RX:010,s_IDLE:000,s_WAIT_TX:100,s_TX:011" *) 
  FDRE \FSM_sequential_rFSM_reg[0] 
       (.C(iClk),
        .CE(1'b1),
        .D(rFSM__0[0]),
        .Q(rFSM[0]),
        .R(iRst));
  (* FSM_ENCODED_STATES = "s_WAIT_RX:001,s_RX:010,s_IDLE:000,s_WAIT_TX:100,s_TX:011" *) 
  FDRE \FSM_sequential_rFSM_reg[1] 
       (.C(iClk),
        .CE(1'b1),
        .D(rFSM__0[1]),
        .Q(rFSM[1]),
        .R(iRst));
  (* FSM_ENCODED_STATES = "s_WAIT_RX:001,s_RX:010,s_IDLE:000,s_WAIT_TX:100,s_TX:011" *) 
  FDRE \FSM_sequential_rFSM_reg[2] 
       (.C(iClk),
        .CE(1'b1),
        .D(rFSM__0[2]),
        .Q(rFSM[2]),
        .R(iRst));
  design_1_uart_top_0_0_uart_rx UART_RX_INST
       (.D(rFSM__0[1]),
        .\FSM_sequential_rFSM_reg[1] (rFSM),
        .\FSM_sequential_rFSM_reg[1]_0 (\FSM_sequential_rFSM[1]_i_2_n_0 ),
        .\FSM_sequential_rFSM_reg[1]_1 (wTxDone),
        .Q(w_oRxDone),
        .iClk(iClk),
        .iRst(iRst),
        .iRx(iRx),
        .\rBuffer_reg[87] (rBuffer[95:88]),
        .\rBuffer_reg[95] ({\rBuffer_reg_n_0_[87] ,\rBuffer_reg_n_0_[86] ,\rBuffer_reg_n_0_[85] ,\rBuffer_reg_n_0_[84] ,\rBuffer_reg_n_0_[83] ,\rBuffer_reg_n_0_[82] ,\rBuffer_reg_n_0_[81] ,\rBuffer_reg_n_0_[80] }));
  design_1_uart_top_0_0_uart_tx UART_TX_INST
       (.D(p_0_in),
        .E(rBuffer_0),
        .\FSM_onehot_rFSM_Current_reg[4]_0 (wTxDone),
        .\FSM_onehot_rFSM_Current_reg[4]_1 ({rFSM__0[2],rFSM__0[0]}),
        .\FSM_onehot_rFSM_Current_reg[4]_2 (UART_TX_INST_n_18),
        .\FSM_sequential_rFSM_reg[0] (w_oRxDone),
        .Q({\rCnt_reg_n_0_[4] ,\rCnt_reg_n_0_[3] ,\rCnt_reg_n_0_[2] ,\rCnt_reg_n_0_[1] ,\rCnt_reg_n_0_[0] }),
        .iClk(iClk),
        .iRst(iRst),
        .oTx(oTx),
        .\rCnt_reg[3] ({UART_TX_INST_n_11,UART_TX_INST_n_12,UART_TX_INST_n_13,UART_TX_INST_n_14,UART_TX_INST_n_15}),
        .\rTxByte_reg[7] ({\rBuffer_reg_n_0_[95] ,\rBuffer_reg_n_0_[94] ,\rBuffer_reg_n_0_[93] ,\rBuffer_reg_n_0_[92] ,\rBuffer_reg_n_0_[91] ,\rBuffer_reg_n_0_[90] ,\rBuffer_reg_n_0_[89] ,\rBuffer_reg_n_0_[88] }),
        .\rTxData_Current_reg[7]_0 (rTxByte),
        .rTxStart_reg(rTxStart_reg_n_0),
        .rTxStart_reg_0(rFSM));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \rBuffer[0]_i_1 
       (.I0(rFSM[2]),
        .I1(rFSM[0]),
        .I2(\rBuffer_reg_n_0_[8] ),
        .O(rBuffer[0]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'h00AC)) 
    \rBuffer[10]_i_1 
       (.I0(\rBuffer_reg_n_0_[2] ),
        .I1(\rBuffer_reg_n_0_[18] ),
        .I2(rFSM[0]),
        .I3(rFSM[2]),
        .O(rBuffer[10]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'h00AC)) 
    \rBuffer[11]_i_1 
       (.I0(\rBuffer_reg_n_0_[3] ),
        .I1(\rBuffer_reg_n_0_[19] ),
        .I2(rFSM[0]),
        .I3(rFSM[2]),
        .O(rBuffer[11]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'h00AC)) 
    \rBuffer[12]_i_1 
       (.I0(\rBuffer_reg_n_0_[4] ),
        .I1(\rBuffer_reg_n_0_[20] ),
        .I2(rFSM[0]),
        .I3(rFSM[2]),
        .O(rBuffer[12]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'h00AC)) 
    \rBuffer[13]_i_1 
       (.I0(\rBuffer_reg_n_0_[5] ),
        .I1(\rBuffer_reg_n_0_[21] ),
        .I2(rFSM[0]),
        .I3(rFSM[2]),
        .O(rBuffer[13]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'h00AC)) 
    \rBuffer[14]_i_1 
       (.I0(\rBuffer_reg_n_0_[6] ),
        .I1(\rBuffer_reg_n_0_[22] ),
        .I2(rFSM[0]),
        .I3(rFSM[2]),
        .O(rBuffer[14]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'h00AC)) 
    \rBuffer[15]_i_1 
       (.I0(\rBuffer_reg_n_0_[7] ),
        .I1(\rBuffer_reg_n_0_[23] ),
        .I2(rFSM[0]),
        .I3(rFSM[2]),
        .O(rBuffer[15]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'h00AC)) 
    \rBuffer[16]_i_1 
       (.I0(\rBuffer_reg_n_0_[8] ),
        .I1(\rBuffer_reg_n_0_[24] ),
        .I2(rFSM[0]),
        .I3(rFSM[2]),
        .O(rBuffer[16]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'h00AC)) 
    \rBuffer[17]_i_1 
       (.I0(\rBuffer_reg_n_0_[9] ),
        .I1(\rBuffer_reg_n_0_[25] ),
        .I2(rFSM[0]),
        .I3(rFSM[2]),
        .O(rBuffer[17]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'h00AC)) 
    \rBuffer[18]_i_1 
       (.I0(\rBuffer_reg_n_0_[10] ),
        .I1(\rBuffer_reg_n_0_[26] ),
        .I2(rFSM[0]),
        .I3(rFSM[2]),
        .O(rBuffer[18]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'h00AC)) 
    \rBuffer[19]_i_1 
       (.I0(\rBuffer_reg_n_0_[11] ),
        .I1(\rBuffer_reg_n_0_[27] ),
        .I2(rFSM[0]),
        .I3(rFSM[2]),
        .O(rBuffer[19]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \rBuffer[1]_i_1 
       (.I0(rFSM[2]),
        .I1(rFSM[0]),
        .I2(\rBuffer_reg_n_0_[9] ),
        .O(rBuffer[1]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'h00AC)) 
    \rBuffer[20]_i_1 
       (.I0(\rBuffer_reg_n_0_[12] ),
        .I1(\rBuffer_reg_n_0_[28] ),
        .I2(rFSM[0]),
        .I3(rFSM[2]),
        .O(rBuffer[20]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'h00AC)) 
    \rBuffer[21]_i_1 
       (.I0(\rBuffer_reg_n_0_[13] ),
        .I1(\rBuffer_reg_n_0_[29] ),
        .I2(rFSM[0]),
        .I3(rFSM[2]),
        .O(rBuffer[21]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'h00AC)) 
    \rBuffer[22]_i_1 
       (.I0(\rBuffer_reg_n_0_[14] ),
        .I1(\rBuffer_reg_n_0_[30] ),
        .I2(rFSM[0]),
        .I3(rFSM[2]),
        .O(rBuffer[22]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'h00AC)) 
    \rBuffer[23]_i_1 
       (.I0(\rBuffer_reg_n_0_[15] ),
        .I1(\rBuffer_reg_n_0_[31] ),
        .I2(rFSM[0]),
        .I3(rFSM[2]),
        .O(rBuffer[23]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h00AC)) 
    \rBuffer[24]_i_1 
       (.I0(\rBuffer_reg_n_0_[16] ),
        .I1(\rBuffer_reg_n_0_[32] ),
        .I2(rFSM[0]),
        .I3(rFSM[2]),
        .O(rBuffer[24]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'h00AC)) 
    \rBuffer[25]_i_1 
       (.I0(\rBuffer_reg_n_0_[17] ),
        .I1(\rBuffer_reg_n_0_[33] ),
        .I2(rFSM[0]),
        .I3(rFSM[2]),
        .O(rBuffer[25]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'h00AC)) 
    \rBuffer[26]_i_1 
       (.I0(\rBuffer_reg_n_0_[18] ),
        .I1(\rBuffer_reg_n_0_[34] ),
        .I2(rFSM[0]),
        .I3(rFSM[2]),
        .O(rBuffer[26]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'h00AC)) 
    \rBuffer[27]_i_1 
       (.I0(\rBuffer_reg_n_0_[19] ),
        .I1(\rBuffer_reg_n_0_[35] ),
        .I2(rFSM[0]),
        .I3(rFSM[2]),
        .O(rBuffer[27]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'h00AC)) 
    \rBuffer[28]_i_1 
       (.I0(\rBuffer_reg_n_0_[20] ),
        .I1(\rBuffer_reg_n_0_[36] ),
        .I2(rFSM[0]),
        .I3(rFSM[2]),
        .O(rBuffer[28]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'h00AC)) 
    \rBuffer[29]_i_1 
       (.I0(\rBuffer_reg_n_0_[21] ),
        .I1(\rBuffer_reg_n_0_[37] ),
        .I2(rFSM[0]),
        .I3(rFSM[2]),
        .O(rBuffer[29]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \rBuffer[2]_i_1 
       (.I0(rFSM[2]),
        .I1(rFSM[0]),
        .I2(\rBuffer_reg_n_0_[10] ),
        .O(rBuffer[2]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'h00AC)) 
    \rBuffer[30]_i_1 
       (.I0(\rBuffer_reg_n_0_[22] ),
        .I1(\rBuffer_reg_n_0_[38] ),
        .I2(rFSM[0]),
        .I3(rFSM[2]),
        .O(rBuffer[30]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'h00AC)) 
    \rBuffer[31]_i_1 
       (.I0(\rBuffer_reg_n_0_[23] ),
        .I1(\rBuffer_reg_n_0_[39] ),
        .I2(rFSM[0]),
        .I3(rFSM[2]),
        .O(rBuffer[31]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'h00AC)) 
    \rBuffer[32]_i_1 
       (.I0(\rBuffer_reg_n_0_[24] ),
        .I1(\rBuffer_reg_n_0_[40] ),
        .I2(rFSM[0]),
        .I3(rFSM[2]),
        .O(rBuffer[32]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT4 #(
    .INIT(16'h00AC)) 
    \rBuffer[33]_i_1 
       (.I0(\rBuffer_reg_n_0_[25] ),
        .I1(\rBuffer_reg_n_0_[41] ),
        .I2(rFSM[0]),
        .I3(rFSM[2]),
        .O(rBuffer[33]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT4 #(
    .INIT(16'h00AC)) 
    \rBuffer[34]_i_1 
       (.I0(\rBuffer_reg_n_0_[26] ),
        .I1(\rBuffer_reg_n_0_[42] ),
        .I2(rFSM[0]),
        .I3(rFSM[2]),
        .O(rBuffer[34]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT4 #(
    .INIT(16'h00AC)) 
    \rBuffer[35]_i_1 
       (.I0(\rBuffer_reg_n_0_[27] ),
        .I1(\rBuffer_reg_n_0_[43] ),
        .I2(rFSM[0]),
        .I3(rFSM[2]),
        .O(rBuffer[35]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT4 #(
    .INIT(16'h00AC)) 
    \rBuffer[36]_i_1 
       (.I0(\rBuffer_reg_n_0_[28] ),
        .I1(\rBuffer_reg_n_0_[44] ),
        .I2(rFSM[0]),
        .I3(rFSM[2]),
        .O(rBuffer[36]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT4 #(
    .INIT(16'h00AC)) 
    \rBuffer[37]_i_1 
       (.I0(\rBuffer_reg_n_0_[29] ),
        .I1(\rBuffer_reg_n_0_[45] ),
        .I2(rFSM[0]),
        .I3(rFSM[2]),
        .O(rBuffer[37]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT4 #(
    .INIT(16'h00AC)) 
    \rBuffer[38]_i_1 
       (.I0(\rBuffer_reg_n_0_[30] ),
        .I1(\rBuffer_reg_n_0_[46] ),
        .I2(rFSM[0]),
        .I3(rFSM[2]),
        .O(rBuffer[38]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT4 #(
    .INIT(16'h00AC)) 
    \rBuffer[39]_i_1 
       (.I0(\rBuffer_reg_n_0_[31] ),
        .I1(\rBuffer_reg_n_0_[47] ),
        .I2(rFSM[0]),
        .I3(rFSM[2]),
        .O(rBuffer[39]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \rBuffer[3]_i_1 
       (.I0(rFSM[2]),
        .I1(rFSM[0]),
        .I2(\rBuffer_reg_n_0_[11] ),
        .O(rBuffer[3]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT4 #(
    .INIT(16'h00AC)) 
    \rBuffer[40]_i_1 
       (.I0(\rBuffer_reg_n_0_[32] ),
        .I1(\rBuffer_reg_n_0_[48] ),
        .I2(rFSM[0]),
        .I3(rFSM[2]),
        .O(rBuffer[40]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT4 #(
    .INIT(16'h00AC)) 
    \rBuffer[41]_i_1 
       (.I0(\rBuffer_reg_n_0_[33] ),
        .I1(\rBuffer_reg_n_0_[49] ),
        .I2(rFSM[0]),
        .I3(rFSM[2]),
        .O(rBuffer[41]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT4 #(
    .INIT(16'h00AC)) 
    \rBuffer[42]_i_1 
       (.I0(\rBuffer_reg_n_0_[34] ),
        .I1(\rBuffer_reg_n_0_[50] ),
        .I2(rFSM[0]),
        .I3(rFSM[2]),
        .O(rBuffer[42]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT4 #(
    .INIT(16'h00AC)) 
    \rBuffer[43]_i_1 
       (.I0(\rBuffer_reg_n_0_[35] ),
        .I1(\rBuffer_reg_n_0_[51] ),
        .I2(rFSM[0]),
        .I3(rFSM[2]),
        .O(rBuffer[43]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT4 #(
    .INIT(16'h00AC)) 
    \rBuffer[44]_i_1 
       (.I0(\rBuffer_reg_n_0_[36] ),
        .I1(\rBuffer_reg_n_0_[52] ),
        .I2(rFSM[0]),
        .I3(rFSM[2]),
        .O(rBuffer[44]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT4 #(
    .INIT(16'h00AC)) 
    \rBuffer[45]_i_1 
       (.I0(\rBuffer_reg_n_0_[37] ),
        .I1(\rBuffer_reg_n_0_[53] ),
        .I2(rFSM[0]),
        .I3(rFSM[2]),
        .O(rBuffer[45]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT4 #(
    .INIT(16'h00AC)) 
    \rBuffer[46]_i_1 
       (.I0(\rBuffer_reg_n_0_[38] ),
        .I1(\rBuffer_reg_n_0_[54] ),
        .I2(rFSM[0]),
        .I3(rFSM[2]),
        .O(rBuffer[46]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT4 #(
    .INIT(16'h00AC)) 
    \rBuffer[47]_i_1 
       (.I0(\rBuffer_reg_n_0_[39] ),
        .I1(\rBuffer_reg_n_0_[55] ),
        .I2(rFSM[0]),
        .I3(rFSM[2]),
        .O(rBuffer[47]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'h00AC)) 
    \rBuffer[48]_i_1 
       (.I0(\rBuffer_reg_n_0_[40] ),
        .I1(\rBuffer_reg_n_0_[56] ),
        .I2(rFSM[0]),
        .I3(rFSM[2]),
        .O(rBuffer[48]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT4 #(
    .INIT(16'h00AC)) 
    \rBuffer[49]_i_1 
       (.I0(\rBuffer_reg_n_0_[41] ),
        .I1(\rBuffer_reg_n_0_[57] ),
        .I2(rFSM[0]),
        .I3(rFSM[2]),
        .O(rBuffer[49]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \rBuffer[4]_i_1 
       (.I0(rFSM[2]),
        .I1(rFSM[0]),
        .I2(\rBuffer_reg_n_0_[12] ),
        .O(rBuffer[4]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT4 #(
    .INIT(16'h00AC)) 
    \rBuffer[50]_i_1 
       (.I0(\rBuffer_reg_n_0_[42] ),
        .I1(\rBuffer_reg_n_0_[58] ),
        .I2(rFSM[0]),
        .I3(rFSM[2]),
        .O(rBuffer[50]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT4 #(
    .INIT(16'h00AC)) 
    \rBuffer[51]_i_1 
       (.I0(\rBuffer_reg_n_0_[43] ),
        .I1(\rBuffer_reg_n_0_[59] ),
        .I2(rFSM[0]),
        .I3(rFSM[2]),
        .O(rBuffer[51]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT4 #(
    .INIT(16'h00AC)) 
    \rBuffer[52]_i_1 
       (.I0(\rBuffer_reg_n_0_[44] ),
        .I1(\rBuffer_reg_n_0_[60] ),
        .I2(rFSM[0]),
        .I3(rFSM[2]),
        .O(rBuffer[52]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT4 #(
    .INIT(16'h00AC)) 
    \rBuffer[53]_i_1 
       (.I0(\rBuffer_reg_n_0_[45] ),
        .I1(\rBuffer_reg_n_0_[61] ),
        .I2(rFSM[0]),
        .I3(rFSM[2]),
        .O(rBuffer[53]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT4 #(
    .INIT(16'h00AC)) 
    \rBuffer[54]_i_1 
       (.I0(\rBuffer_reg_n_0_[46] ),
        .I1(\rBuffer_reg_n_0_[62] ),
        .I2(rFSM[0]),
        .I3(rFSM[2]),
        .O(rBuffer[54]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT4 #(
    .INIT(16'h00AC)) 
    \rBuffer[55]_i_1 
       (.I0(\rBuffer_reg_n_0_[47] ),
        .I1(\rBuffer_reg_n_0_[63] ),
        .I2(rFSM[0]),
        .I3(rFSM[2]),
        .O(rBuffer[55]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT4 #(
    .INIT(16'h00AC)) 
    \rBuffer[56]_i_1 
       (.I0(\rBuffer_reg_n_0_[48] ),
        .I1(\rBuffer_reg_n_0_[64] ),
        .I2(rFSM[0]),
        .I3(rFSM[2]),
        .O(rBuffer[56]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT4 #(
    .INIT(16'h00AC)) 
    \rBuffer[57]_i_1 
       (.I0(\rBuffer_reg_n_0_[49] ),
        .I1(\rBuffer_reg_n_0_[65] ),
        .I2(rFSM[0]),
        .I3(rFSM[2]),
        .O(rBuffer[57]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT4 #(
    .INIT(16'h00AC)) 
    \rBuffer[58]_i_1 
       (.I0(\rBuffer_reg_n_0_[50] ),
        .I1(\rBuffer_reg_n_0_[66] ),
        .I2(rFSM[0]),
        .I3(rFSM[2]),
        .O(rBuffer[58]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT4 #(
    .INIT(16'h00AC)) 
    \rBuffer[59]_i_1 
       (.I0(\rBuffer_reg_n_0_[51] ),
        .I1(\rBuffer_reg_n_0_[67] ),
        .I2(rFSM[0]),
        .I3(rFSM[2]),
        .O(rBuffer[59]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \rBuffer[5]_i_1 
       (.I0(rFSM[2]),
        .I1(rFSM[0]),
        .I2(\rBuffer_reg_n_0_[13] ),
        .O(rBuffer[5]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT4 #(
    .INIT(16'h00AC)) 
    \rBuffer[60]_i_1 
       (.I0(\rBuffer_reg_n_0_[52] ),
        .I1(\rBuffer_reg_n_0_[68] ),
        .I2(rFSM[0]),
        .I3(rFSM[2]),
        .O(rBuffer[60]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT4 #(
    .INIT(16'h00AC)) 
    \rBuffer[61]_i_1 
       (.I0(\rBuffer_reg_n_0_[53] ),
        .I1(\rBuffer_reg_n_0_[69] ),
        .I2(rFSM[0]),
        .I3(rFSM[2]),
        .O(rBuffer[61]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT4 #(
    .INIT(16'h00AC)) 
    \rBuffer[62]_i_1 
       (.I0(\rBuffer_reg_n_0_[54] ),
        .I1(\rBuffer_reg_n_0_[70] ),
        .I2(rFSM[0]),
        .I3(rFSM[2]),
        .O(rBuffer[62]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT4 #(
    .INIT(16'h00AC)) 
    \rBuffer[63]_i_1 
       (.I0(\rBuffer_reg_n_0_[55] ),
        .I1(\rBuffer_reg_n_0_[71] ),
        .I2(rFSM[0]),
        .I3(rFSM[2]),
        .O(rBuffer[63]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT4 #(
    .INIT(16'h00AC)) 
    \rBuffer[64]_i_1 
       (.I0(\rBuffer_reg_n_0_[56] ),
        .I1(\rBuffer_reg_n_0_[72] ),
        .I2(rFSM[0]),
        .I3(rFSM[2]),
        .O(rBuffer[64]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT4 #(
    .INIT(16'h00AC)) 
    \rBuffer[65]_i_1 
       (.I0(\rBuffer_reg_n_0_[57] ),
        .I1(\rBuffer_reg_n_0_[73] ),
        .I2(rFSM[0]),
        .I3(rFSM[2]),
        .O(rBuffer[65]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT4 #(
    .INIT(16'h00AC)) 
    \rBuffer[66]_i_1 
       (.I0(\rBuffer_reg_n_0_[58] ),
        .I1(\rBuffer_reg_n_0_[74] ),
        .I2(rFSM[0]),
        .I3(rFSM[2]),
        .O(rBuffer[66]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT4 #(
    .INIT(16'h00AC)) 
    \rBuffer[67]_i_1 
       (.I0(\rBuffer_reg_n_0_[59] ),
        .I1(\rBuffer_reg_n_0_[75] ),
        .I2(rFSM[0]),
        .I3(rFSM[2]),
        .O(rBuffer[67]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT4 #(
    .INIT(16'h00AC)) 
    \rBuffer[68]_i_1 
       (.I0(\rBuffer_reg_n_0_[60] ),
        .I1(\rBuffer_reg_n_0_[76] ),
        .I2(rFSM[0]),
        .I3(rFSM[2]),
        .O(rBuffer[68]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT4 #(
    .INIT(16'h00AC)) 
    \rBuffer[69]_i_1 
       (.I0(\rBuffer_reg_n_0_[61] ),
        .I1(\rBuffer_reg_n_0_[77] ),
        .I2(rFSM[0]),
        .I3(rFSM[2]),
        .O(rBuffer[69]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \rBuffer[6]_i_1 
       (.I0(rFSM[2]),
        .I1(rFSM[0]),
        .I2(\rBuffer_reg_n_0_[14] ),
        .O(rBuffer[6]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT4 #(
    .INIT(16'h00AC)) 
    \rBuffer[70]_i_1 
       (.I0(\rBuffer_reg_n_0_[62] ),
        .I1(\rBuffer_reg_n_0_[78] ),
        .I2(rFSM[0]),
        .I3(rFSM[2]),
        .O(rBuffer[70]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT4 #(
    .INIT(16'h00AC)) 
    \rBuffer[71]_i_1 
       (.I0(\rBuffer_reg_n_0_[63] ),
        .I1(\rBuffer_reg_n_0_[79] ),
        .I2(rFSM[0]),
        .I3(rFSM[2]),
        .O(rBuffer[71]));
  LUT4 #(
    .INIT(16'h00AC)) 
    \rBuffer[72]_i_1 
       (.I0(\rBuffer_reg_n_0_[64] ),
        .I1(\rBuffer_reg_n_0_[80] ),
        .I2(rFSM[0]),
        .I3(rFSM[2]),
        .O(rBuffer[72]));
  LUT4 #(
    .INIT(16'h00AC)) 
    \rBuffer[73]_i_1 
       (.I0(\rBuffer_reg_n_0_[65] ),
        .I1(\rBuffer_reg_n_0_[81] ),
        .I2(rFSM[0]),
        .I3(rFSM[2]),
        .O(rBuffer[73]));
  LUT4 #(
    .INIT(16'h00AC)) 
    \rBuffer[74]_i_1 
       (.I0(\rBuffer_reg_n_0_[66] ),
        .I1(\rBuffer_reg_n_0_[82] ),
        .I2(rFSM[0]),
        .I3(rFSM[2]),
        .O(rBuffer[74]));
  LUT4 #(
    .INIT(16'h00AC)) 
    \rBuffer[75]_i_1 
       (.I0(\rBuffer_reg_n_0_[67] ),
        .I1(\rBuffer_reg_n_0_[83] ),
        .I2(rFSM[0]),
        .I3(rFSM[2]),
        .O(rBuffer[75]));
  LUT4 #(
    .INIT(16'h00AC)) 
    \rBuffer[76]_i_1 
       (.I0(\rBuffer_reg_n_0_[68] ),
        .I1(\rBuffer_reg_n_0_[84] ),
        .I2(rFSM[0]),
        .I3(rFSM[2]),
        .O(rBuffer[76]));
  LUT4 #(
    .INIT(16'h00AC)) 
    \rBuffer[77]_i_1 
       (.I0(\rBuffer_reg_n_0_[69] ),
        .I1(\rBuffer_reg_n_0_[85] ),
        .I2(rFSM[0]),
        .I3(rFSM[2]),
        .O(rBuffer[77]));
  LUT4 #(
    .INIT(16'h00AC)) 
    \rBuffer[78]_i_1 
       (.I0(\rBuffer_reg_n_0_[70] ),
        .I1(\rBuffer_reg_n_0_[86] ),
        .I2(rFSM[0]),
        .I3(rFSM[2]),
        .O(rBuffer[78]));
  LUT4 #(
    .INIT(16'h00AC)) 
    \rBuffer[79]_i_1 
       (.I0(\rBuffer_reg_n_0_[71] ),
        .I1(\rBuffer_reg_n_0_[87] ),
        .I2(rFSM[0]),
        .I3(rFSM[2]),
        .O(rBuffer[79]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \rBuffer[7]_i_1 
       (.I0(rFSM[2]),
        .I1(rFSM[0]),
        .I2(\rBuffer_reg_n_0_[15] ),
        .O(rBuffer[7]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT4 #(
    .INIT(16'h00AC)) 
    \rBuffer[80]_i_1 
       (.I0(\rBuffer_reg_n_0_[72] ),
        .I1(\rBuffer_reg_n_0_[88] ),
        .I2(rFSM[0]),
        .I3(rFSM[2]),
        .O(rBuffer[80]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT4 #(
    .INIT(16'h00AC)) 
    \rBuffer[81]_i_1 
       (.I0(\rBuffer_reg_n_0_[73] ),
        .I1(\rBuffer_reg_n_0_[89] ),
        .I2(rFSM[0]),
        .I3(rFSM[2]),
        .O(rBuffer[81]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT4 #(
    .INIT(16'h00AC)) 
    \rBuffer[82]_i_1 
       (.I0(\rBuffer_reg_n_0_[74] ),
        .I1(\rBuffer_reg_n_0_[90] ),
        .I2(rFSM[0]),
        .I3(rFSM[2]),
        .O(rBuffer[82]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT4 #(
    .INIT(16'h00AC)) 
    \rBuffer[83]_i_1 
       (.I0(\rBuffer_reg_n_0_[75] ),
        .I1(\rBuffer_reg_n_0_[91] ),
        .I2(rFSM[0]),
        .I3(rFSM[2]),
        .O(rBuffer[83]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT4 #(
    .INIT(16'h00AC)) 
    \rBuffer[84]_i_1 
       (.I0(\rBuffer_reg_n_0_[76] ),
        .I1(\rBuffer_reg_n_0_[92] ),
        .I2(rFSM[0]),
        .I3(rFSM[2]),
        .O(rBuffer[84]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT4 #(
    .INIT(16'h00AC)) 
    \rBuffer[85]_i_1 
       (.I0(\rBuffer_reg_n_0_[77] ),
        .I1(\rBuffer_reg_n_0_[93] ),
        .I2(rFSM[0]),
        .I3(rFSM[2]),
        .O(rBuffer[85]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT4 #(
    .INIT(16'h00AC)) 
    \rBuffer[86]_i_1 
       (.I0(\rBuffer_reg_n_0_[78] ),
        .I1(\rBuffer_reg_n_0_[94] ),
        .I2(rFSM[0]),
        .I3(rFSM[2]),
        .O(rBuffer[86]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT4 #(
    .INIT(16'h00AC)) 
    \rBuffer[87]_i_1 
       (.I0(\rBuffer_reg_n_0_[79] ),
        .I1(\rBuffer_reg_n_0_[95] ),
        .I2(rFSM[0]),
        .I3(rFSM[2]),
        .O(rBuffer[87]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h00AC)) 
    \rBuffer[8]_i_1 
       (.I0(\rBuffer_reg_n_0_[0] ),
        .I1(\rBuffer_reg_n_0_[16] ),
        .I2(rFSM[0]),
        .I3(rFSM[2]),
        .O(rBuffer[8]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'h00AC)) 
    \rBuffer[9]_i_1 
       (.I0(\rBuffer_reg_n_0_[1] ),
        .I1(\rBuffer_reg_n_0_[17] ),
        .I2(rFSM[0]),
        .I3(rFSM[2]),
        .O(rBuffer[9]));
  FDRE \rBuffer_reg[0] 
       (.C(iClk),
        .CE(rBuffer_0),
        .D(rBuffer[0]),
        .Q(\rBuffer_reg_n_0_[0] ),
        .R(iRst));
  FDRE \rBuffer_reg[10] 
       (.C(iClk),
        .CE(rBuffer_0),
        .D(rBuffer[10]),
        .Q(\rBuffer_reg_n_0_[10] ),
        .R(iRst));
  FDRE \rBuffer_reg[11] 
       (.C(iClk),
        .CE(rBuffer_0),
        .D(rBuffer[11]),
        .Q(\rBuffer_reg_n_0_[11] ),
        .R(iRst));
  FDRE \rBuffer_reg[12] 
       (.C(iClk),
        .CE(rBuffer_0),
        .D(rBuffer[12]),
        .Q(\rBuffer_reg_n_0_[12] ),
        .R(iRst));
  FDRE \rBuffer_reg[13] 
       (.C(iClk),
        .CE(rBuffer_0),
        .D(rBuffer[13]),
        .Q(\rBuffer_reg_n_0_[13] ),
        .R(iRst));
  FDRE \rBuffer_reg[14] 
       (.C(iClk),
        .CE(rBuffer_0),
        .D(rBuffer[14]),
        .Q(\rBuffer_reg_n_0_[14] ),
        .R(iRst));
  FDRE \rBuffer_reg[15] 
       (.C(iClk),
        .CE(rBuffer_0),
        .D(rBuffer[15]),
        .Q(\rBuffer_reg_n_0_[15] ),
        .R(iRst));
  FDRE \rBuffer_reg[16] 
       (.C(iClk),
        .CE(rBuffer_0),
        .D(rBuffer[16]),
        .Q(\rBuffer_reg_n_0_[16] ),
        .R(iRst));
  FDRE \rBuffer_reg[17] 
       (.C(iClk),
        .CE(rBuffer_0),
        .D(rBuffer[17]),
        .Q(\rBuffer_reg_n_0_[17] ),
        .R(iRst));
  FDRE \rBuffer_reg[18] 
       (.C(iClk),
        .CE(rBuffer_0),
        .D(rBuffer[18]),
        .Q(\rBuffer_reg_n_0_[18] ),
        .R(iRst));
  FDRE \rBuffer_reg[19] 
       (.C(iClk),
        .CE(rBuffer_0),
        .D(rBuffer[19]),
        .Q(\rBuffer_reg_n_0_[19] ),
        .R(iRst));
  FDRE \rBuffer_reg[1] 
       (.C(iClk),
        .CE(rBuffer_0),
        .D(rBuffer[1]),
        .Q(\rBuffer_reg_n_0_[1] ),
        .R(iRst));
  FDRE \rBuffer_reg[20] 
       (.C(iClk),
        .CE(rBuffer_0),
        .D(rBuffer[20]),
        .Q(\rBuffer_reg_n_0_[20] ),
        .R(iRst));
  FDRE \rBuffer_reg[21] 
       (.C(iClk),
        .CE(rBuffer_0),
        .D(rBuffer[21]),
        .Q(\rBuffer_reg_n_0_[21] ),
        .R(iRst));
  FDRE \rBuffer_reg[22] 
       (.C(iClk),
        .CE(rBuffer_0),
        .D(rBuffer[22]),
        .Q(\rBuffer_reg_n_0_[22] ),
        .R(iRst));
  FDRE \rBuffer_reg[23] 
       (.C(iClk),
        .CE(rBuffer_0),
        .D(rBuffer[23]),
        .Q(\rBuffer_reg_n_0_[23] ),
        .R(iRst));
  FDRE \rBuffer_reg[24] 
       (.C(iClk),
        .CE(rBuffer_0),
        .D(rBuffer[24]),
        .Q(\rBuffer_reg_n_0_[24] ),
        .R(iRst));
  FDRE \rBuffer_reg[25] 
       (.C(iClk),
        .CE(rBuffer_0),
        .D(rBuffer[25]),
        .Q(\rBuffer_reg_n_0_[25] ),
        .R(iRst));
  FDRE \rBuffer_reg[26] 
       (.C(iClk),
        .CE(rBuffer_0),
        .D(rBuffer[26]),
        .Q(\rBuffer_reg_n_0_[26] ),
        .R(iRst));
  FDRE \rBuffer_reg[27] 
       (.C(iClk),
        .CE(rBuffer_0),
        .D(rBuffer[27]),
        .Q(\rBuffer_reg_n_0_[27] ),
        .R(iRst));
  FDRE \rBuffer_reg[28] 
       (.C(iClk),
        .CE(rBuffer_0),
        .D(rBuffer[28]),
        .Q(\rBuffer_reg_n_0_[28] ),
        .R(iRst));
  FDRE \rBuffer_reg[29] 
       (.C(iClk),
        .CE(rBuffer_0),
        .D(rBuffer[29]),
        .Q(\rBuffer_reg_n_0_[29] ),
        .R(iRst));
  FDRE \rBuffer_reg[2] 
       (.C(iClk),
        .CE(rBuffer_0),
        .D(rBuffer[2]),
        .Q(\rBuffer_reg_n_0_[2] ),
        .R(iRst));
  FDRE \rBuffer_reg[30] 
       (.C(iClk),
        .CE(rBuffer_0),
        .D(rBuffer[30]),
        .Q(\rBuffer_reg_n_0_[30] ),
        .R(iRst));
  FDRE \rBuffer_reg[31] 
       (.C(iClk),
        .CE(rBuffer_0),
        .D(rBuffer[31]),
        .Q(\rBuffer_reg_n_0_[31] ),
        .R(iRst));
  FDRE \rBuffer_reg[32] 
       (.C(iClk),
        .CE(rBuffer_0),
        .D(rBuffer[32]),
        .Q(\rBuffer_reg_n_0_[32] ),
        .R(iRst));
  FDRE \rBuffer_reg[33] 
       (.C(iClk),
        .CE(rBuffer_0),
        .D(rBuffer[33]),
        .Q(\rBuffer_reg_n_0_[33] ),
        .R(iRst));
  FDRE \rBuffer_reg[34] 
       (.C(iClk),
        .CE(rBuffer_0),
        .D(rBuffer[34]),
        .Q(\rBuffer_reg_n_0_[34] ),
        .R(iRst));
  FDRE \rBuffer_reg[35] 
       (.C(iClk),
        .CE(rBuffer_0),
        .D(rBuffer[35]),
        .Q(\rBuffer_reg_n_0_[35] ),
        .R(iRst));
  FDRE \rBuffer_reg[36] 
       (.C(iClk),
        .CE(rBuffer_0),
        .D(rBuffer[36]),
        .Q(\rBuffer_reg_n_0_[36] ),
        .R(iRst));
  FDRE \rBuffer_reg[37] 
       (.C(iClk),
        .CE(rBuffer_0),
        .D(rBuffer[37]),
        .Q(\rBuffer_reg_n_0_[37] ),
        .R(iRst));
  FDRE \rBuffer_reg[38] 
       (.C(iClk),
        .CE(rBuffer_0),
        .D(rBuffer[38]),
        .Q(\rBuffer_reg_n_0_[38] ),
        .R(iRst));
  FDRE \rBuffer_reg[39] 
       (.C(iClk),
        .CE(rBuffer_0),
        .D(rBuffer[39]),
        .Q(\rBuffer_reg_n_0_[39] ),
        .R(iRst));
  FDRE \rBuffer_reg[3] 
       (.C(iClk),
        .CE(rBuffer_0),
        .D(rBuffer[3]),
        .Q(\rBuffer_reg_n_0_[3] ),
        .R(iRst));
  FDRE \rBuffer_reg[40] 
       (.C(iClk),
        .CE(rBuffer_0),
        .D(rBuffer[40]),
        .Q(\rBuffer_reg_n_0_[40] ),
        .R(iRst));
  FDRE \rBuffer_reg[41] 
       (.C(iClk),
        .CE(rBuffer_0),
        .D(rBuffer[41]),
        .Q(\rBuffer_reg_n_0_[41] ),
        .R(iRst));
  FDRE \rBuffer_reg[42] 
       (.C(iClk),
        .CE(rBuffer_0),
        .D(rBuffer[42]),
        .Q(\rBuffer_reg_n_0_[42] ),
        .R(iRst));
  FDRE \rBuffer_reg[43] 
       (.C(iClk),
        .CE(rBuffer_0),
        .D(rBuffer[43]),
        .Q(\rBuffer_reg_n_0_[43] ),
        .R(iRst));
  FDRE \rBuffer_reg[44] 
       (.C(iClk),
        .CE(rBuffer_0),
        .D(rBuffer[44]),
        .Q(\rBuffer_reg_n_0_[44] ),
        .R(iRst));
  FDRE \rBuffer_reg[45] 
       (.C(iClk),
        .CE(rBuffer_0),
        .D(rBuffer[45]),
        .Q(\rBuffer_reg_n_0_[45] ),
        .R(iRst));
  FDRE \rBuffer_reg[46] 
       (.C(iClk),
        .CE(rBuffer_0),
        .D(rBuffer[46]),
        .Q(\rBuffer_reg_n_0_[46] ),
        .R(iRst));
  FDRE \rBuffer_reg[47] 
       (.C(iClk),
        .CE(rBuffer_0),
        .D(rBuffer[47]),
        .Q(\rBuffer_reg_n_0_[47] ),
        .R(iRst));
  FDRE \rBuffer_reg[48] 
       (.C(iClk),
        .CE(rBuffer_0),
        .D(rBuffer[48]),
        .Q(\rBuffer_reg_n_0_[48] ),
        .R(iRst));
  FDRE \rBuffer_reg[49] 
       (.C(iClk),
        .CE(rBuffer_0),
        .D(rBuffer[49]),
        .Q(\rBuffer_reg_n_0_[49] ),
        .R(iRst));
  FDRE \rBuffer_reg[4] 
       (.C(iClk),
        .CE(rBuffer_0),
        .D(rBuffer[4]),
        .Q(\rBuffer_reg_n_0_[4] ),
        .R(iRst));
  FDRE \rBuffer_reg[50] 
       (.C(iClk),
        .CE(rBuffer_0),
        .D(rBuffer[50]),
        .Q(\rBuffer_reg_n_0_[50] ),
        .R(iRst));
  FDRE \rBuffer_reg[51] 
       (.C(iClk),
        .CE(rBuffer_0),
        .D(rBuffer[51]),
        .Q(\rBuffer_reg_n_0_[51] ),
        .R(iRst));
  FDRE \rBuffer_reg[52] 
       (.C(iClk),
        .CE(rBuffer_0),
        .D(rBuffer[52]),
        .Q(\rBuffer_reg_n_0_[52] ),
        .R(iRst));
  FDRE \rBuffer_reg[53] 
       (.C(iClk),
        .CE(rBuffer_0),
        .D(rBuffer[53]),
        .Q(\rBuffer_reg_n_0_[53] ),
        .R(iRst));
  FDRE \rBuffer_reg[54] 
       (.C(iClk),
        .CE(rBuffer_0),
        .D(rBuffer[54]),
        .Q(\rBuffer_reg_n_0_[54] ),
        .R(iRst));
  FDRE \rBuffer_reg[55] 
       (.C(iClk),
        .CE(rBuffer_0),
        .D(rBuffer[55]),
        .Q(\rBuffer_reg_n_0_[55] ),
        .R(iRst));
  FDRE \rBuffer_reg[56] 
       (.C(iClk),
        .CE(rBuffer_0),
        .D(rBuffer[56]),
        .Q(\rBuffer_reg_n_0_[56] ),
        .R(iRst));
  FDRE \rBuffer_reg[57] 
       (.C(iClk),
        .CE(rBuffer_0),
        .D(rBuffer[57]),
        .Q(\rBuffer_reg_n_0_[57] ),
        .R(iRst));
  FDRE \rBuffer_reg[58] 
       (.C(iClk),
        .CE(rBuffer_0),
        .D(rBuffer[58]),
        .Q(\rBuffer_reg_n_0_[58] ),
        .R(iRst));
  FDRE \rBuffer_reg[59] 
       (.C(iClk),
        .CE(rBuffer_0),
        .D(rBuffer[59]),
        .Q(\rBuffer_reg_n_0_[59] ),
        .R(iRst));
  FDRE \rBuffer_reg[5] 
       (.C(iClk),
        .CE(rBuffer_0),
        .D(rBuffer[5]),
        .Q(\rBuffer_reg_n_0_[5] ),
        .R(iRst));
  FDRE \rBuffer_reg[60] 
       (.C(iClk),
        .CE(rBuffer_0),
        .D(rBuffer[60]),
        .Q(\rBuffer_reg_n_0_[60] ),
        .R(iRst));
  FDRE \rBuffer_reg[61] 
       (.C(iClk),
        .CE(rBuffer_0),
        .D(rBuffer[61]),
        .Q(\rBuffer_reg_n_0_[61] ),
        .R(iRst));
  FDRE \rBuffer_reg[62] 
       (.C(iClk),
        .CE(rBuffer_0),
        .D(rBuffer[62]),
        .Q(\rBuffer_reg_n_0_[62] ),
        .R(iRst));
  FDRE \rBuffer_reg[63] 
       (.C(iClk),
        .CE(rBuffer_0),
        .D(rBuffer[63]),
        .Q(\rBuffer_reg_n_0_[63] ),
        .R(iRst));
  FDRE \rBuffer_reg[64] 
       (.C(iClk),
        .CE(rBuffer_0),
        .D(rBuffer[64]),
        .Q(\rBuffer_reg_n_0_[64] ),
        .R(iRst));
  FDRE \rBuffer_reg[65] 
       (.C(iClk),
        .CE(rBuffer_0),
        .D(rBuffer[65]),
        .Q(\rBuffer_reg_n_0_[65] ),
        .R(iRst));
  FDRE \rBuffer_reg[66] 
       (.C(iClk),
        .CE(rBuffer_0),
        .D(rBuffer[66]),
        .Q(\rBuffer_reg_n_0_[66] ),
        .R(iRst));
  FDRE \rBuffer_reg[67] 
       (.C(iClk),
        .CE(rBuffer_0),
        .D(rBuffer[67]),
        .Q(\rBuffer_reg_n_0_[67] ),
        .R(iRst));
  FDRE \rBuffer_reg[68] 
       (.C(iClk),
        .CE(rBuffer_0),
        .D(rBuffer[68]),
        .Q(\rBuffer_reg_n_0_[68] ),
        .R(iRst));
  FDRE \rBuffer_reg[69] 
       (.C(iClk),
        .CE(rBuffer_0),
        .D(rBuffer[69]),
        .Q(\rBuffer_reg_n_0_[69] ),
        .R(iRst));
  FDRE \rBuffer_reg[6] 
       (.C(iClk),
        .CE(rBuffer_0),
        .D(rBuffer[6]),
        .Q(\rBuffer_reg_n_0_[6] ),
        .R(iRst));
  FDRE \rBuffer_reg[70] 
       (.C(iClk),
        .CE(rBuffer_0),
        .D(rBuffer[70]),
        .Q(\rBuffer_reg_n_0_[70] ),
        .R(iRst));
  FDRE \rBuffer_reg[71] 
       (.C(iClk),
        .CE(rBuffer_0),
        .D(rBuffer[71]),
        .Q(\rBuffer_reg_n_0_[71] ),
        .R(iRst));
  FDRE \rBuffer_reg[72] 
       (.C(iClk),
        .CE(rBuffer_0),
        .D(rBuffer[72]),
        .Q(\rBuffer_reg_n_0_[72] ),
        .R(iRst));
  FDRE \rBuffer_reg[73] 
       (.C(iClk),
        .CE(rBuffer_0),
        .D(rBuffer[73]),
        .Q(\rBuffer_reg_n_0_[73] ),
        .R(iRst));
  FDRE \rBuffer_reg[74] 
       (.C(iClk),
        .CE(rBuffer_0),
        .D(rBuffer[74]),
        .Q(\rBuffer_reg_n_0_[74] ),
        .R(iRst));
  FDRE \rBuffer_reg[75] 
       (.C(iClk),
        .CE(rBuffer_0),
        .D(rBuffer[75]),
        .Q(\rBuffer_reg_n_0_[75] ),
        .R(iRst));
  FDRE \rBuffer_reg[76] 
       (.C(iClk),
        .CE(rBuffer_0),
        .D(rBuffer[76]),
        .Q(\rBuffer_reg_n_0_[76] ),
        .R(iRst));
  FDRE \rBuffer_reg[77] 
       (.C(iClk),
        .CE(rBuffer_0),
        .D(rBuffer[77]),
        .Q(\rBuffer_reg_n_0_[77] ),
        .R(iRst));
  FDRE \rBuffer_reg[78] 
       (.C(iClk),
        .CE(rBuffer_0),
        .D(rBuffer[78]),
        .Q(\rBuffer_reg_n_0_[78] ),
        .R(iRst));
  FDRE \rBuffer_reg[79] 
       (.C(iClk),
        .CE(rBuffer_0),
        .D(rBuffer[79]),
        .Q(\rBuffer_reg_n_0_[79] ),
        .R(iRst));
  FDRE \rBuffer_reg[7] 
       (.C(iClk),
        .CE(rBuffer_0),
        .D(rBuffer[7]),
        .Q(\rBuffer_reg_n_0_[7] ),
        .R(iRst));
  FDRE \rBuffer_reg[80] 
       (.C(iClk),
        .CE(rBuffer_0),
        .D(rBuffer[80]),
        .Q(\rBuffer_reg_n_0_[80] ),
        .R(iRst));
  FDRE \rBuffer_reg[81] 
       (.C(iClk),
        .CE(rBuffer_0),
        .D(rBuffer[81]),
        .Q(\rBuffer_reg_n_0_[81] ),
        .R(iRst));
  FDRE \rBuffer_reg[82] 
       (.C(iClk),
        .CE(rBuffer_0),
        .D(rBuffer[82]),
        .Q(\rBuffer_reg_n_0_[82] ),
        .R(iRst));
  FDRE \rBuffer_reg[83] 
       (.C(iClk),
        .CE(rBuffer_0),
        .D(rBuffer[83]),
        .Q(\rBuffer_reg_n_0_[83] ),
        .R(iRst));
  FDRE \rBuffer_reg[84] 
       (.C(iClk),
        .CE(rBuffer_0),
        .D(rBuffer[84]),
        .Q(\rBuffer_reg_n_0_[84] ),
        .R(iRst));
  FDRE \rBuffer_reg[85] 
       (.C(iClk),
        .CE(rBuffer_0),
        .D(rBuffer[85]),
        .Q(\rBuffer_reg_n_0_[85] ),
        .R(iRst));
  FDRE \rBuffer_reg[86] 
       (.C(iClk),
        .CE(rBuffer_0),
        .D(rBuffer[86]),
        .Q(\rBuffer_reg_n_0_[86] ),
        .R(iRst));
  FDRE \rBuffer_reg[87] 
       (.C(iClk),
        .CE(rBuffer_0),
        .D(rBuffer[87]),
        .Q(\rBuffer_reg_n_0_[87] ),
        .R(iRst));
  FDRE \rBuffer_reg[88] 
       (.C(iClk),
        .CE(rBuffer_0),
        .D(rBuffer[88]),
        .Q(\rBuffer_reg_n_0_[88] ),
        .R(iRst));
  FDRE \rBuffer_reg[89] 
       (.C(iClk),
        .CE(rBuffer_0),
        .D(rBuffer[89]),
        .Q(\rBuffer_reg_n_0_[89] ),
        .R(iRst));
  FDRE \rBuffer_reg[8] 
       (.C(iClk),
        .CE(rBuffer_0),
        .D(rBuffer[8]),
        .Q(\rBuffer_reg_n_0_[8] ),
        .R(iRst));
  FDRE \rBuffer_reg[90] 
       (.C(iClk),
        .CE(rBuffer_0),
        .D(rBuffer[90]),
        .Q(\rBuffer_reg_n_0_[90] ),
        .R(iRst));
  FDRE \rBuffer_reg[91] 
       (.C(iClk),
        .CE(rBuffer_0),
        .D(rBuffer[91]),
        .Q(\rBuffer_reg_n_0_[91] ),
        .R(iRst));
  FDRE \rBuffer_reg[92] 
       (.C(iClk),
        .CE(rBuffer_0),
        .D(rBuffer[92]),
        .Q(\rBuffer_reg_n_0_[92] ),
        .R(iRst));
  FDRE \rBuffer_reg[93] 
       (.C(iClk),
        .CE(rBuffer_0),
        .D(rBuffer[93]),
        .Q(\rBuffer_reg_n_0_[93] ),
        .R(iRst));
  FDRE \rBuffer_reg[94] 
       (.C(iClk),
        .CE(rBuffer_0),
        .D(rBuffer[94]),
        .Q(\rBuffer_reg_n_0_[94] ),
        .R(iRst));
  FDRE \rBuffer_reg[95] 
       (.C(iClk),
        .CE(rBuffer_0),
        .D(rBuffer[95]),
        .Q(\rBuffer_reg_n_0_[95] ),
        .R(iRst));
  FDRE \rBuffer_reg[9] 
       (.C(iClk),
        .CE(rBuffer_0),
        .D(rBuffer[9]),
        .Q(\rBuffer_reg_n_0_[9] ),
        .R(iRst));
  LUT2 #(
    .INIT(4'h2)) 
    \rCnt[4]_i_1 
       (.I0(rFSM[1]),
        .I1(rFSM[2]),
        .O(rCnt));
  FDRE \rCnt_reg[0] 
       (.C(iClk),
        .CE(rCnt),
        .D(UART_TX_INST_n_15),
        .Q(\rCnt_reg_n_0_[0] ),
        .R(iRst));
  FDRE \rCnt_reg[1] 
       (.C(iClk),
        .CE(rCnt),
        .D(UART_TX_INST_n_14),
        .Q(\rCnt_reg_n_0_[1] ),
        .R(iRst));
  FDRE \rCnt_reg[2] 
       (.C(iClk),
        .CE(rCnt),
        .D(UART_TX_INST_n_13),
        .Q(\rCnt_reg_n_0_[2] ),
        .R(iRst));
  FDRE \rCnt_reg[3] 
       (.C(iClk),
        .CE(rCnt),
        .D(UART_TX_INST_n_12),
        .Q(\rCnt_reg_n_0_[3] ),
        .R(iRst));
  FDRE \rCnt_reg[4] 
       (.C(iClk),
        .CE(rCnt),
        .D(UART_TX_INST_n_11),
        .Q(\rCnt_reg_n_0_[4] ),
        .R(iRst));
  LUT3 #(
    .INIT(8'h40)) 
    \rTxByte[7]_i_1 
       (.I0(rFSM[2]),
        .I1(rFSM[0]),
        .I2(rFSM[1]),
        .O(rTxByte_1));
  FDRE \rTxByte_reg[0] 
       (.C(iClk),
        .CE(rTxByte_1),
        .D(p_0_in[0]),
        .Q(rTxByte[0]),
        .R(iRst));
  FDRE \rTxByte_reg[1] 
       (.C(iClk),
        .CE(rTxByte_1),
        .D(p_0_in[1]),
        .Q(rTxByte[1]),
        .R(iRst));
  FDRE \rTxByte_reg[2] 
       (.C(iClk),
        .CE(rTxByte_1),
        .D(p_0_in[2]),
        .Q(rTxByte[2]),
        .R(iRst));
  FDRE \rTxByte_reg[3] 
       (.C(iClk),
        .CE(rTxByte_1),
        .D(p_0_in[3]),
        .Q(rTxByte[3]),
        .R(iRst));
  FDRE \rTxByte_reg[4] 
       (.C(iClk),
        .CE(rTxByte_1),
        .D(p_0_in[4]),
        .Q(rTxByte[4]),
        .R(iRst));
  FDRE \rTxByte_reg[5] 
       (.C(iClk),
        .CE(rTxByte_1),
        .D(p_0_in[5]),
        .Q(rTxByte[5]),
        .R(iRst));
  FDRE \rTxByte_reg[6] 
       (.C(iClk),
        .CE(rTxByte_1),
        .D(p_0_in[6]),
        .Q(rTxByte[6]),
        .R(iRst));
  FDRE \rTxByte_reg[7] 
       (.C(iClk),
        .CE(rTxByte_1),
        .D(p_0_in[7]),
        .Q(rTxByte[7]),
        .R(iRst));
  FDRE rTxStart_reg
       (.C(iClk),
        .CE(1'b1),
        .D(UART_TX_INST_n_18),
        .Q(rTxStart_reg_n_0),
        .R(iRst));
endmodule

(* ORIG_REF_NAME = "uart_tx" *) 
module design_1_uart_top_0_0_uart_tx
   (D,
    \FSM_onehot_rFSM_Current_reg[4]_0 ,
    \FSM_onehot_rFSM_Current_reg[4]_1 ,
    \rCnt_reg[3] ,
    E,
    oTx,
    \FSM_onehot_rFSM_Current_reg[4]_2 ,
    rTxStart_reg,
    Q,
    \rTxByte_reg[7] ,
    rTxStart_reg_0,
    \FSM_sequential_rFSM_reg[0] ,
    \rTxData_Current_reg[7]_0 ,
    iRst,
    iClk);
  output [7:0]D;
  output [0:0]\FSM_onehot_rFSM_Current_reg[4]_0 ;
  output [1:0]\FSM_onehot_rFSM_Current_reg[4]_1 ;
  output [4:0]\rCnt_reg[3] ;
  output [0:0]E;
  output oTx;
  output \FSM_onehot_rFSM_Current_reg[4]_2 ;
  input rTxStart_reg;
  input [4:0]Q;
  input [7:0]\rTxByte_reg[7] ;
  input [2:0]rTxStart_reg_0;
  input [0:0]\FSM_sequential_rFSM_reg[0] ;
  input [7:0]\rTxData_Current_reg[7]_0 ;
  input iRst;
  input iClk;

  wire [7:0]D;
  wire [0:0]E;
  wire \FSM_onehot_rFSM_Current[0]_i_1_n_0 ;
  wire \FSM_onehot_rFSM_Current[1]_i_1_n_0 ;
  wire \FSM_onehot_rFSM_Current[2]_i_1_n_0 ;
  wire \FSM_onehot_rFSM_Current[3]_i_1_n_0 ;
  wire \FSM_onehot_rFSM_Current[4]_i_1_n_0 ;
  wire \FSM_onehot_rFSM_Current[4]_i_2_n_0 ;
  wire \FSM_onehot_rFSM_Current[4]_i_3_n_0 ;
  wire [0:0]\FSM_onehot_rFSM_Current_reg[4]_0 ;
  wire [1:0]\FSM_onehot_rFSM_Current_reg[4]_1 ;
  wire \FSM_onehot_rFSM_Current_reg[4]_2 ;
  wire \FSM_onehot_rFSM_Current_reg_n_0_[0] ;
  wire \FSM_onehot_rFSM_Current_reg_n_0_[1] ;
  wire \FSM_onehot_rFSM_Current_reg_n_0_[2] ;
  wire \FSM_onehot_rFSM_Current_reg_n_0_[3] ;
  wire \FSM_sequential_rFSM[2]_i_2_n_0 ;
  wire [0:0]\FSM_sequential_rFSM_reg[0] ;
  wire [4:0]Q;
  wire iClk;
  wire iRst;
  wire [6:0]in7;
  wire oTx;
  wire [2:0]rBit_Current;
  wire \rBit_Current[0]_i_1_n_0 ;
  wire \rBit_Current[1]_i_1_n_0 ;
  wire \rBit_Current[2]_i_1_n_0 ;
  wire \rBit_Current[2]_i_3_n_0 ;
  wire \rBit_Current[2]_i_4_n_0 ;
  wire \rBit_Current[2]_i_5_n_0 ;
  wire \rBuffer[95]_i_3_n_0 ;
  wire \rCnt_Current[0]_i_1_n_0 ;
  wire \rCnt_Current[10]_i_1_n_0 ;
  wire \rCnt_Current[10]_i_2_n_0 ;
  wire \rCnt_Current[10]_i_3_n_0 ;
  wire \rCnt_Current[1]_i_1_n_0 ;
  wire \rCnt_Current[2]_i_1_n_0 ;
  wire \rCnt_Current[3]_i_1_n_0 ;
  wire \rCnt_Current[4]_i_1_n_0 ;
  wire \rCnt_Current[5]_i_1_n_0 ;
  wire \rCnt_Current[5]_i_2_n_0 ;
  wire \rCnt_Current[6]_i_1_n_0 ;
  wire \rCnt_Current[7]_i_1_n_0 ;
  wire \rCnt_Current[8]_i_1_n_0 ;
  wire \rCnt_Current[9]_i_1_n_0 ;
  wire \rCnt_Current[9]_i_2_n_0 ;
  wire \rCnt_Current_reg_n_0_[0] ;
  wire \rCnt_Current_reg_n_0_[10] ;
  wire \rCnt_Current_reg_n_0_[1] ;
  wire \rCnt_Current_reg_n_0_[2] ;
  wire \rCnt_Current_reg_n_0_[3] ;
  wire \rCnt_Current_reg_n_0_[4] ;
  wire \rCnt_Current_reg_n_0_[5] ;
  wire \rCnt_Current_reg_n_0_[6] ;
  wire \rCnt_Current_reg_n_0_[7] ;
  wire \rCnt_Current_reg_n_0_[8] ;
  wire \rCnt_Current_reg_n_0_[9] ;
  wire [4:0]\rCnt_reg[3] ;
  wire [7:0]\rTxByte_reg[7] ;
  wire \rTxData_Current[0]_i_1_n_0 ;
  wire \rTxData_Current[1]_i_1_n_0 ;
  wire \rTxData_Current[2]_i_1_n_0 ;
  wire \rTxData_Current[3]_i_1_n_0 ;
  wire \rTxData_Current[4]_i_1_n_0 ;
  wire \rTxData_Current[5]_i_1_n_0 ;
  wire \rTxData_Current[6]_i_1_n_0 ;
  wire \rTxData_Current[7]_i_2_n_0 ;
  wire \rTxData_Current[7]_i_3_n_0 ;
  wire [7:0]\rTxData_Current_reg[7]_0 ;
  wire \rTxData_Current_reg_n_0_[0] ;
  wire rTxStart_reg;
  wire [2:0]rTxStart_reg_0;
  wire wBit_Next;
  wire wTxData_Next;

  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hF4)) 
    \FSM_onehot_rFSM_Current[0]_i_1 
       (.I0(rTxStart_reg),
        .I1(\FSM_onehot_rFSM_Current_reg_n_0_[0] ),
        .I2(\FSM_onehot_rFSM_Current_reg[4]_0 ),
        .O(\FSM_onehot_rFSM_Current[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \FSM_onehot_rFSM_Current[1]_i_1 
       (.I0(rTxStart_reg),
        .I1(\FSM_onehot_rFSM_Current_reg_n_0_[0] ),
        .I2(\FSM_onehot_rFSM_Current[4]_i_2_n_0 ),
        .I3(\FSM_onehot_rFSM_Current_reg_n_0_[1] ),
        .O(\FSM_onehot_rFSM_Current[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFF7F0000FF00)) 
    \FSM_onehot_rFSM_Current[2]_i_1 
       (.I0(rBit_Current[2]),
        .I1(rBit_Current[1]),
        .I2(rBit_Current[0]),
        .I3(\FSM_onehot_rFSM_Current_reg_n_0_[1] ),
        .I4(\FSM_onehot_rFSM_Current[4]_i_2_n_0 ),
        .I5(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .O(\FSM_onehot_rFSM_Current[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB888888888888888)) 
    \FSM_onehot_rFSM_Current[3]_i_1 
       (.I0(\FSM_onehot_rFSM_Current_reg_n_0_[3] ),
        .I1(\FSM_onehot_rFSM_Current[4]_i_2_n_0 ),
        .I2(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .I3(rBit_Current[2]),
        .I4(rBit_Current[1]),
        .I5(rBit_Current[0]),
        .O(\FSM_onehot_rFSM_Current[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_onehot_rFSM_Current[4]_i_1 
       (.I0(\FSM_onehot_rFSM_Current_reg_n_0_[3] ),
        .I1(\FSM_onehot_rFSM_Current[4]_i_2_n_0 ),
        .O(\FSM_onehot_rFSM_Current[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000002FFFFFFFF)) 
    \FSM_onehot_rFSM_Current[4]_i_2 
       (.I0(\FSM_onehot_rFSM_Current[4]_i_3_n_0 ),
        .I1(\rCnt_Current_reg_n_0_[7] ),
        .I2(\rCnt_Current_reg_n_0_[6] ),
        .I3(\rCnt_Current_reg_n_0_[9] ),
        .I4(\rCnt_Current_reg_n_0_[8] ),
        .I5(\rCnt_Current_reg_n_0_[10] ),
        .O(\FSM_onehot_rFSM_Current[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \FSM_onehot_rFSM_Current[4]_i_3 
       (.I0(\rCnt_Current_reg_n_0_[4] ),
        .I1(\rCnt_Current_reg_n_0_[2] ),
        .I2(\rCnt_Current_reg_n_0_[3] ),
        .I3(\rCnt_Current_reg_n_0_[5] ),
        .O(\FSM_onehot_rFSM_Current[4]_i_3_n_0 ));
  (* FSM_ENCODED_STATES = "sIDLE:00001,sTX_START:00010,sTX_DATA:00100,sDONE:10000,sTX_STOP:01000" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_rFSM_Current_reg[0] 
       (.C(iClk),
        .CE(1'b1),
        .D(\FSM_onehot_rFSM_Current[0]_i_1_n_0 ),
        .Q(\FSM_onehot_rFSM_Current_reg_n_0_[0] ),
        .S(iRst));
  (* FSM_ENCODED_STATES = "sIDLE:00001,sTX_START:00010,sTX_DATA:00100,sDONE:10000,sTX_STOP:01000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_rFSM_Current_reg[1] 
       (.C(iClk),
        .CE(1'b1),
        .D(\FSM_onehot_rFSM_Current[1]_i_1_n_0 ),
        .Q(\FSM_onehot_rFSM_Current_reg_n_0_[1] ),
        .R(iRst));
  (* FSM_ENCODED_STATES = "sIDLE:00001,sTX_START:00010,sTX_DATA:00100,sDONE:10000,sTX_STOP:01000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_rFSM_Current_reg[2] 
       (.C(iClk),
        .CE(1'b1),
        .D(\FSM_onehot_rFSM_Current[2]_i_1_n_0 ),
        .Q(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .R(iRst));
  (* FSM_ENCODED_STATES = "sIDLE:00001,sTX_START:00010,sTX_DATA:00100,sDONE:10000,sTX_STOP:01000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_rFSM_Current_reg[3] 
       (.C(iClk),
        .CE(1'b1),
        .D(\FSM_onehot_rFSM_Current[3]_i_1_n_0 ),
        .Q(\FSM_onehot_rFSM_Current_reg_n_0_[3] ),
        .R(iRst));
  (* FSM_ENCODED_STATES = "sIDLE:00001,sTX_START:00010,sTX_DATA:00100,sDONE:10000,sTX_STOP:01000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_rFSM_Current_reg[4] 
       (.C(iClk),
        .CE(1'b1),
        .D(\FSM_onehot_rFSM_Current[4]_i_1_n_0 ),
        .Q(\FSM_onehot_rFSM_Current_reg[4]_0 ),
        .R(iRst));
  LUT5 #(
    .INIT(32'hC5C5C5CF)) 
    \FSM_sequential_rFSM[0]_i_1 
       (.I0(rTxStart_reg_0[0]),
        .I1(\FSM_onehot_rFSM_Current_reg[4]_0 ),
        .I2(rTxStart_reg_0[2]),
        .I3(\FSM_sequential_rFSM_reg[0] ),
        .I4(rTxStart_reg_0[1]),
        .O(\FSM_onehot_rFSM_Current_reg[4]_1 [0]));
  LUT5 #(
    .INIT(32'h5C505050)) 
    \FSM_sequential_rFSM[2]_i_1 
       (.I0(\FSM_onehot_rFSM_Current_reg[4]_0 ),
        .I1(\FSM_sequential_rFSM[2]_i_2_n_0 ),
        .I2(rTxStart_reg_0[2]),
        .I3(rTxStart_reg_0[0]),
        .I4(rTxStart_reg_0[1]),
        .O(\FSM_onehot_rFSM_Current_reg[4]_1 [1]));
  LUT5 #(
    .INIT(32'h000E0E0E)) 
    \FSM_sequential_rFSM[2]_i_2 
       (.I0(\FSM_onehot_rFSM_Current_reg_n_0_[0] ),
        .I1(\FSM_onehot_rFSM_Current_reg[4]_0 ),
        .I2(Q[4]),
        .I3(Q[3]),
        .I4(Q[2]),
        .O(\FSM_sequential_rFSM[2]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h8B)) 
    oTx_INST_0
       (.I0(\rTxData_Current_reg_n_0_[0] ),
        .I1(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .I2(\FSM_onehot_rFSM_Current_reg_n_0_[1] ),
        .O(oTx));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h38)) 
    \rBit_Current[0]_i_1 
       (.I0(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .I1(wBit_Next),
        .I2(rBit_Current[0]),
        .O(\rBit_Current[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h2F80)) 
    \rBit_Current[1]_i_1 
       (.I0(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .I1(rBit_Current[0]),
        .I2(wBit_Next),
        .I3(rBit_Current[1]),
        .O(\rBit_Current[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h2AFF8000)) 
    \rBit_Current[2]_i_1 
       (.I0(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .I1(rBit_Current[1]),
        .I2(rBit_Current[0]),
        .I3(wBit_Next),
        .I4(rBit_Current[2]),
        .O(\rBit_Current[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBAFFAAAAAAAAAAAA)) 
    \rBit_Current[2]_i_2 
       (.I0(\rBit_Current[2]_i_3_n_0 ),
        .I1(\rBit_Current[2]_i_4_n_0 ),
        .I2(\rCnt_Current_reg_n_0_[5] ),
        .I3(\rBit_Current[2]_i_5_n_0 ),
        .I4(\rCnt_Current_reg_n_0_[10] ),
        .I5(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .O(wBit_Next));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \rBit_Current[2]_i_3 
       (.I0(\FSM_onehot_rFSM_Current_reg[4]_0 ),
        .I1(\FSM_onehot_rFSM_Current_reg_n_0_[0] ),
        .I2(\FSM_onehot_rFSM_Current_reg_n_0_[3] ),
        .I3(\FSM_onehot_rFSM_Current_reg_n_0_[1] ),
        .O(\rBit_Current[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \rBit_Current[2]_i_4 
       (.I0(\rCnt_Current_reg_n_0_[3] ),
        .I1(\rCnt_Current_reg_n_0_[2] ),
        .I2(\rCnt_Current_reg_n_0_[4] ),
        .O(\rBit_Current[2]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \rBit_Current[2]_i_5 
       (.I0(\rCnt_Current_reg_n_0_[7] ),
        .I1(\rCnt_Current_reg_n_0_[6] ),
        .I2(\rCnt_Current_reg_n_0_[9] ),
        .I3(\rCnt_Current_reg_n_0_[8] ),
        .O(\rBit_Current[2]_i_5_n_0 ));
  FDRE \rBit_Current_reg[0] 
       (.C(iClk),
        .CE(1'b1),
        .D(\rBit_Current[0]_i_1_n_0 ),
        .Q(rBit_Current[0]),
        .R(iRst));
  FDRE \rBit_Current_reg[1] 
       (.C(iClk),
        .CE(1'b1),
        .D(\rBit_Current[1]_i_1_n_0 ),
        .Q(rBit_Current[1]),
        .R(iRst));
  FDRE \rBit_Current_reg[2] 
       (.C(iClk),
        .CE(1'b1),
        .D(\rBit_Current[2]_i_1_n_0 ),
        .Q(rBit_Current[2]),
        .R(iRst));
  LUT2 #(
    .INIT(4'h8)) 
    \rBuffer[95]_i_1 
       (.I0(\rBuffer[95]_i_3_n_0 ),
        .I1(rTxStart_reg_0[1]),
        .O(E));
  LUT6 #(
    .INIT(64'h00000000AAAA003F)) 
    \rBuffer[95]_i_3 
       (.I0(\FSM_sequential_rFSM[2]_i_2_n_0 ),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(Q[4]),
        .I4(rTxStart_reg_0[0]),
        .I5(rTxStart_reg_0[2]),
        .O(\rBuffer[95]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rCnt[0]_i_1 
       (.I0(\rBuffer[95]_i_3_n_0 ),
        .I1(Q[0]),
        .O(\rCnt_reg[3] [0]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \rCnt[1]_i_1 
       (.I0(\rBuffer[95]_i_3_n_0 ),
        .I1(Q[0]),
        .I2(Q[1]),
        .O(\rCnt_reg[3] [1]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h2A80)) 
    \rCnt[2]_i_1 
       (.I0(\rBuffer[95]_i_3_n_0 ),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[2]),
        .O(\rCnt_reg[3] [2]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h2AAA8000)) 
    \rCnt[3]_i_1 
       (.I0(\rBuffer[95]_i_3_n_0 ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[3]),
        .O(\rCnt_reg[3] [3]));
  LUT6 #(
    .INIT(64'h2AAAAAAA80000000)) 
    \rCnt[4]_i_2 
       (.I0(\rBuffer[95]_i_3_n_0 ),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(Q[4]),
        .O(\rCnt_reg[3] [4]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rCnt_Current[0]_i_1 
       (.I0(\rCnt_Current[10]_i_3_n_0 ),
        .I1(\rCnt_Current_reg_n_0_[0] ),
        .O(\rCnt_Current[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFF000080000000)) 
    \rCnt_Current[10]_i_1 
       (.I0(\rCnt_Current_reg_n_0_[8] ),
        .I1(\rCnt_Current[10]_i_2_n_0 ),
        .I2(\rCnt_Current_reg_n_0_[7] ),
        .I3(\rCnt_Current_reg_n_0_[9] ),
        .I4(\rCnt_Current[10]_i_3_n_0 ),
        .I5(\rCnt_Current_reg_n_0_[10] ),
        .O(\rCnt_Current[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \rCnt_Current[10]_i_2 
       (.I0(\rCnt_Current_reg_n_0_[6] ),
        .I1(\rCnt_Current_reg_n_0_[5] ),
        .I2(\rCnt_Current_reg_n_0_[4] ),
        .I3(\rCnt_Current_reg_n_0_[2] ),
        .I4(\rCnt_Current_reg_n_0_[3] ),
        .I5(\rCnt_Current[5]_i_2_n_0 ),
        .O(\rCnt_Current[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFEFE00FE00FE00FE)) 
    \rCnt_Current[10]_i_3 
       (.I0(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .I1(\FSM_onehot_rFSM_Current_reg_n_0_[3] ),
        .I2(\FSM_onehot_rFSM_Current_reg_n_0_[1] ),
        .I3(\rCnt_Current_reg_n_0_[10] ),
        .I4(\rBit_Current[2]_i_5_n_0 ),
        .I5(\FSM_onehot_rFSM_Current[4]_i_3_n_0 ),
        .O(\rCnt_Current[10]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \rCnt_Current[1]_i_1 
       (.I0(\rCnt_Current[10]_i_3_n_0 ),
        .I1(\rCnt_Current_reg_n_0_[0] ),
        .I2(\rCnt_Current_reg_n_0_[1] ),
        .O(\rCnt_Current[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h2A80)) 
    \rCnt_Current[2]_i_1 
       (.I0(\rCnt_Current[10]_i_3_n_0 ),
        .I1(\rCnt_Current_reg_n_0_[0] ),
        .I2(\rCnt_Current_reg_n_0_[1] ),
        .I3(\rCnt_Current_reg_n_0_[2] ),
        .O(\rCnt_Current[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h2AAA8000)) 
    \rCnt_Current[3]_i_1 
       (.I0(\rCnt_Current[10]_i_3_n_0 ),
        .I1(\rCnt_Current_reg_n_0_[2] ),
        .I2(\rCnt_Current_reg_n_0_[1] ),
        .I3(\rCnt_Current_reg_n_0_[0] ),
        .I4(\rCnt_Current_reg_n_0_[3] ),
        .O(\rCnt_Current[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2AAAAAAA80000000)) 
    \rCnt_Current[4]_i_1 
       (.I0(\rCnt_Current[10]_i_3_n_0 ),
        .I1(\rCnt_Current_reg_n_0_[1] ),
        .I2(\rCnt_Current_reg_n_0_[0] ),
        .I3(\rCnt_Current_reg_n_0_[2] ),
        .I4(\rCnt_Current_reg_n_0_[3] ),
        .I5(\rCnt_Current_reg_n_0_[4] ),
        .O(\rCnt_Current[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8AAAAAAA20000000)) 
    \rCnt_Current[5]_i_1 
       (.I0(\rCnt_Current[10]_i_3_n_0 ),
        .I1(\rCnt_Current[5]_i_2_n_0 ),
        .I2(\rCnt_Current_reg_n_0_[3] ),
        .I3(\rCnt_Current_reg_n_0_[2] ),
        .I4(\rCnt_Current_reg_n_0_[4] ),
        .I5(\rCnt_Current_reg_n_0_[5] ),
        .O(\rCnt_Current[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \rCnt_Current[5]_i_2 
       (.I0(\rCnt_Current_reg_n_0_[1] ),
        .I1(\rCnt_Current_reg_n_0_[0] ),
        .O(\rCnt_Current[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \rCnt_Current[6]_i_1 
       (.I0(\rCnt_Current[10]_i_3_n_0 ),
        .I1(\rCnt_Current[9]_i_2_n_0 ),
        .I2(\rCnt_Current_reg_n_0_[6] ),
        .O(\rCnt_Current[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hD020)) 
    \rCnt_Current[7]_i_1 
       (.I0(\rCnt_Current_reg_n_0_[6] ),
        .I1(\rCnt_Current[9]_i_2_n_0 ),
        .I2(\rCnt_Current[10]_i_3_n_0 ),
        .I3(\rCnt_Current_reg_n_0_[7] ),
        .O(\rCnt_Current[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'hBF004000)) 
    \rCnt_Current[8]_i_1 
       (.I0(\rCnt_Current[9]_i_2_n_0 ),
        .I1(\rCnt_Current_reg_n_0_[6] ),
        .I2(\rCnt_Current_reg_n_0_[7] ),
        .I3(\rCnt_Current[10]_i_3_n_0 ),
        .I4(\rCnt_Current_reg_n_0_[8] ),
        .O(\rCnt_Current[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF7FF000008000000)) 
    \rCnt_Current[9]_i_1 
       (.I0(\rCnt_Current_reg_n_0_[7] ),
        .I1(\rCnt_Current_reg_n_0_[6] ),
        .I2(\rCnt_Current[9]_i_2_n_0 ),
        .I3(\rCnt_Current_reg_n_0_[8] ),
        .I4(\rCnt_Current[10]_i_3_n_0 ),
        .I5(\rCnt_Current_reg_n_0_[9] ),
        .O(\rCnt_Current[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \rCnt_Current[9]_i_2 
       (.I0(\rCnt_Current_reg_n_0_[1] ),
        .I1(\rCnt_Current_reg_n_0_[0] ),
        .I2(\rCnt_Current_reg_n_0_[3] ),
        .I3(\rCnt_Current_reg_n_0_[2] ),
        .I4(\rCnt_Current_reg_n_0_[4] ),
        .I5(\rCnt_Current_reg_n_0_[5] ),
        .O(\rCnt_Current[9]_i_2_n_0 ));
  FDRE \rCnt_Current_reg[0] 
       (.C(iClk),
        .CE(1'b1),
        .D(\rCnt_Current[0]_i_1_n_0 ),
        .Q(\rCnt_Current_reg_n_0_[0] ),
        .R(iRst));
  FDRE \rCnt_Current_reg[10] 
       (.C(iClk),
        .CE(1'b1),
        .D(\rCnt_Current[10]_i_1_n_0 ),
        .Q(\rCnt_Current_reg_n_0_[10] ),
        .R(iRst));
  FDRE \rCnt_Current_reg[1] 
       (.C(iClk),
        .CE(1'b1),
        .D(\rCnt_Current[1]_i_1_n_0 ),
        .Q(\rCnt_Current_reg_n_0_[1] ),
        .R(iRst));
  FDRE \rCnt_Current_reg[2] 
       (.C(iClk),
        .CE(1'b1),
        .D(\rCnt_Current[2]_i_1_n_0 ),
        .Q(\rCnt_Current_reg_n_0_[2] ),
        .R(iRst));
  FDRE \rCnt_Current_reg[3] 
       (.C(iClk),
        .CE(1'b1),
        .D(\rCnt_Current[3]_i_1_n_0 ),
        .Q(\rCnt_Current_reg_n_0_[3] ),
        .R(iRst));
  FDRE \rCnt_Current_reg[4] 
       (.C(iClk),
        .CE(1'b1),
        .D(\rCnt_Current[4]_i_1_n_0 ),
        .Q(\rCnt_Current_reg_n_0_[4] ),
        .R(iRst));
  FDRE \rCnt_Current_reg[5] 
       (.C(iClk),
        .CE(1'b1),
        .D(\rCnt_Current[5]_i_1_n_0 ),
        .Q(\rCnt_Current_reg_n_0_[5] ),
        .R(iRst));
  FDRE \rCnt_Current_reg[6] 
       (.C(iClk),
        .CE(1'b1),
        .D(\rCnt_Current[6]_i_1_n_0 ),
        .Q(\rCnt_Current_reg_n_0_[6] ),
        .R(iRst));
  FDRE \rCnt_Current_reg[7] 
       (.C(iClk),
        .CE(1'b1),
        .D(\rCnt_Current[7]_i_1_n_0 ),
        .Q(\rCnt_Current_reg_n_0_[7] ),
        .R(iRst));
  FDRE \rCnt_Current_reg[8] 
       (.C(iClk),
        .CE(1'b1),
        .D(\rCnt_Current[8]_i_1_n_0 ),
        .Q(\rCnt_Current_reg_n_0_[8] ),
        .R(iRst));
  FDRE \rCnt_Current_reg[9] 
       (.C(iClk),
        .CE(1'b1),
        .D(\rCnt_Current[9]_i_1_n_0 ),
        .Q(\rCnt_Current_reg_n_0_[9] ),
        .R(iRst));
  LUT6 #(
    .INIT(64'h0707070000000000)) 
    \rTxByte[0]_i_1 
       (.I0(Q[2]),
        .I1(Q[3]),
        .I2(Q[4]),
        .I3(\FSM_onehot_rFSM_Current_reg[4]_0 ),
        .I4(\FSM_onehot_rFSM_Current_reg_n_0_[0] ),
        .I5(\rTxByte_reg[7] [0]),
        .O(D[0]));
  LUT6 #(
    .INIT(64'h0707070000000000)) 
    \rTxByte[1]_i_1 
       (.I0(Q[2]),
        .I1(Q[3]),
        .I2(Q[4]),
        .I3(\FSM_onehot_rFSM_Current_reg[4]_0 ),
        .I4(\FSM_onehot_rFSM_Current_reg_n_0_[0] ),
        .I5(\rTxByte_reg[7] [1]),
        .O(D[1]));
  LUT6 #(
    .INIT(64'h0707070000000000)) 
    \rTxByte[2]_i_1 
       (.I0(Q[2]),
        .I1(Q[3]),
        .I2(Q[4]),
        .I3(\FSM_onehot_rFSM_Current_reg[4]_0 ),
        .I4(\FSM_onehot_rFSM_Current_reg_n_0_[0] ),
        .I5(\rTxByte_reg[7] [2]),
        .O(D[2]));
  LUT6 #(
    .INIT(64'h0707070000000000)) 
    \rTxByte[3]_i_1 
       (.I0(Q[2]),
        .I1(Q[3]),
        .I2(Q[4]),
        .I3(\FSM_onehot_rFSM_Current_reg[4]_0 ),
        .I4(\FSM_onehot_rFSM_Current_reg_n_0_[0] ),
        .I5(\rTxByte_reg[7] [3]),
        .O(D[3]));
  LUT6 #(
    .INIT(64'h0707070000000000)) 
    \rTxByte[4]_i_1 
       (.I0(Q[2]),
        .I1(Q[3]),
        .I2(Q[4]),
        .I3(\FSM_onehot_rFSM_Current_reg[4]_0 ),
        .I4(\FSM_onehot_rFSM_Current_reg_n_0_[0] ),
        .I5(\rTxByte_reg[7] [4]),
        .O(D[4]));
  LUT6 #(
    .INIT(64'h0707070000000000)) 
    \rTxByte[5]_i_1 
       (.I0(Q[2]),
        .I1(Q[3]),
        .I2(Q[4]),
        .I3(\FSM_onehot_rFSM_Current_reg[4]_0 ),
        .I4(\FSM_onehot_rFSM_Current_reg_n_0_[0] ),
        .I5(\rTxByte_reg[7] [5]),
        .O(D[5]));
  LUT6 #(
    .INIT(64'h0707070000000000)) 
    \rTxByte[6]_i_1 
       (.I0(Q[2]),
        .I1(Q[3]),
        .I2(Q[4]),
        .I3(\FSM_onehot_rFSM_Current_reg[4]_0 ),
        .I4(\FSM_onehot_rFSM_Current_reg_n_0_[0] ),
        .I5(\rTxByte_reg[7] [6]),
        .O(D[6]));
  LUT6 #(
    .INIT(64'h0707070000000000)) 
    \rTxByte[7]_i_2 
       (.I0(Q[2]),
        .I1(Q[3]),
        .I2(Q[4]),
        .I3(\FSM_onehot_rFSM_Current_reg[4]_0 ),
        .I4(\FSM_onehot_rFSM_Current_reg_n_0_[0] ),
        .I5(\rTxByte_reg[7] [7]),
        .O(D[7]));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \rTxData_Current[0]_i_1 
       (.I0(\FSM_onehot_rFSM_Current_reg_n_0_[1] ),
        .I1(\FSM_onehot_rFSM_Current_reg_n_0_[0] ),
        .I2(\rTxData_Current_reg[7]_0 [0]),
        .I3(in7[0]),
        .I4(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .O(\rTxData_Current[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \rTxData_Current[1]_i_1 
       (.I0(\FSM_onehot_rFSM_Current_reg_n_0_[1] ),
        .I1(\FSM_onehot_rFSM_Current_reg_n_0_[0] ),
        .I2(\rTxData_Current_reg[7]_0 [1]),
        .I3(in7[1]),
        .I4(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .O(\rTxData_Current[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \rTxData_Current[2]_i_1 
       (.I0(\FSM_onehot_rFSM_Current_reg_n_0_[1] ),
        .I1(\FSM_onehot_rFSM_Current_reg_n_0_[0] ),
        .I2(\rTxData_Current_reg[7]_0 [2]),
        .I3(in7[2]),
        .I4(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .O(\rTxData_Current[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \rTxData_Current[3]_i_1 
       (.I0(\FSM_onehot_rFSM_Current_reg_n_0_[1] ),
        .I1(\FSM_onehot_rFSM_Current_reg_n_0_[0] ),
        .I2(\rTxData_Current_reg[7]_0 [3]),
        .I3(in7[3]),
        .I4(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .O(\rTxData_Current[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \rTxData_Current[4]_i_1 
       (.I0(\FSM_onehot_rFSM_Current_reg_n_0_[1] ),
        .I1(\FSM_onehot_rFSM_Current_reg_n_0_[0] ),
        .I2(\rTxData_Current_reg[7]_0 [4]),
        .I3(in7[4]),
        .I4(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .O(\rTxData_Current[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \rTxData_Current[5]_i_1 
       (.I0(\FSM_onehot_rFSM_Current_reg_n_0_[1] ),
        .I1(\FSM_onehot_rFSM_Current_reg_n_0_[0] ),
        .I2(\rTxData_Current_reg[7]_0 [5]),
        .I3(in7[5]),
        .I4(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .O(\rTxData_Current[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \rTxData_Current[6]_i_1 
       (.I0(\FSM_onehot_rFSM_Current_reg_n_0_[1] ),
        .I1(\FSM_onehot_rFSM_Current_reg_n_0_[0] ),
        .I2(\rTxData_Current_reg[7]_0 [6]),
        .I3(in7[6]),
        .I4(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .O(\rTxData_Current[6]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF444)) 
    \rTxData_Current[7]_i_1 
       (.I0(\FSM_onehot_rFSM_Current[4]_i_2_n_0 ),
        .I1(\rTxData_Current[7]_i_3_n_0 ),
        .I2(rTxStart_reg),
        .I3(\FSM_onehot_rFSM_Current_reg_n_0_[0] ),
        .O(wTxData_Next));
  LUT2 #(
    .INIT(4'h8)) 
    \rTxData_Current[7]_i_2 
       (.I0(\FSM_onehot_rFSM_Current_reg_n_0_[0] ),
        .I1(\rTxData_Current_reg[7]_0 [7]),
        .O(\rTxData_Current[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h2AAA)) 
    \rTxData_Current[7]_i_3 
       (.I0(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .I1(rBit_Current[2]),
        .I2(rBit_Current[1]),
        .I3(rBit_Current[0]),
        .O(\rTxData_Current[7]_i_3_n_0 ));
  FDRE \rTxData_Current_reg[0] 
       (.C(iClk),
        .CE(wTxData_Next),
        .D(\rTxData_Current[0]_i_1_n_0 ),
        .Q(\rTxData_Current_reg_n_0_[0] ),
        .R(iRst));
  FDRE \rTxData_Current_reg[1] 
       (.C(iClk),
        .CE(wTxData_Next),
        .D(\rTxData_Current[1]_i_1_n_0 ),
        .Q(in7[0]),
        .R(iRst));
  FDRE \rTxData_Current_reg[2] 
       (.C(iClk),
        .CE(wTxData_Next),
        .D(\rTxData_Current[2]_i_1_n_0 ),
        .Q(in7[1]),
        .R(iRst));
  FDRE \rTxData_Current_reg[3] 
       (.C(iClk),
        .CE(wTxData_Next),
        .D(\rTxData_Current[3]_i_1_n_0 ),
        .Q(in7[2]),
        .R(iRst));
  FDRE \rTxData_Current_reg[4] 
       (.C(iClk),
        .CE(wTxData_Next),
        .D(\rTxData_Current[4]_i_1_n_0 ),
        .Q(in7[3]),
        .R(iRst));
  FDRE \rTxData_Current_reg[5] 
       (.C(iClk),
        .CE(wTxData_Next),
        .D(\rTxData_Current[5]_i_1_n_0 ),
        .Q(in7[4]),
        .R(iRst));
  FDRE \rTxData_Current_reg[6] 
       (.C(iClk),
        .CE(wTxData_Next),
        .D(\rTxData_Current[6]_i_1_n_0 ),
        .Q(in7[5]),
        .R(iRst));
  FDRE \rTxData_Current_reg[7] 
       (.C(iClk),
        .CE(wTxData_Next),
        .D(\rTxData_Current[7]_i_2_n_0 ),
        .Q(in7[6]),
        .R(iRst));
  LUT6 #(
    .INIT(64'hFFFCAFFF0000A000)) 
    rTxStart_i_1
       (.I0(\FSM_sequential_rFSM[2]_i_2_n_0 ),
        .I1(\FSM_onehot_rFSM_Current_reg[4]_0 ),
        .I2(rTxStart_reg_0[1]),
        .I3(rTxStart_reg_0[0]),
        .I4(rTxStart_reg_0[2]),
        .I5(rTxStart_reg),
        .O(\FSM_onehot_rFSM_Current_reg[4]_2 ));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
