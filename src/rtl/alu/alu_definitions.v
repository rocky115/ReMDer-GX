/* Copyright (C) 2019 Radhamadhab Dalai - All Rights Reserved
 * You may use, distribute and modify this code under the
 * terms of the license, which unfortunately won't be
 * written for another century.
 *
 * You should have received a copy of the license with
 * this file. If not, please write to: dalai115@gmail.com.
 */

/**
 * File containing all definitions of 'alu' 
 ***/

`ifndef _alu_definitions_v_
`define _alu_definitions_v_

`define MODULE_SIMD 0
`define MODULE_SIMF 1

`define ALU_VOPC_FORMAT 8'h01
`define ALU_VOP1_FORMAT 8'h02
`define ALU_VOP2_FORMAT 8'h04
`define ALU_VOP3B_FORMAT 8'h08
`define ALU_VOP3A_FORMAT 8'h10

`define ALU_VOP3A_NEG1_POS 23
`define ALU_VOP3A_NEG2_POS 22
`define ALU_VOP3A_NEG3_POS 21
`define ALU_VOP3A_OMOD1_POS 20
`define ALU_VOP3A_OMOD2_POS 19
`define ALU_VOP3A_CLAMP_POS 18
`define ALU_VOP3A_ABS1_POS 17
`define ALU_VOP3A_ABS2_POS 16
`define ALU_VOP3A_ABS3_POS 15

`define ALU_VOP3B_NEG1_POS 23
`define ALU_VOP3B_NEG2_POS 22
`define ALU_VOP3B_NEG3_POS 21
`define ALU_VOP3B_OMOD1_POS 20
`define ALU_VOP3B_OMOD2_POS 19

`endif // _alu_definitions_v_
