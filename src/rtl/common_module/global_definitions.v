/* Copyright (C) 2019 Radhamadhab Dalai - All Rights Reserved
 * You may use, distribute and modify this code under the
 * terms of the license, which unfortunately won't be
 * written for another century.
 *
 * You should have received a copy of the license with
 * this file. If not, please write to: dalai115@gmail.com.
 */

`ifndef _global_definitions_v_
`define _global_definitions_v_
// Maximum number of wavefronts per compute unit
`define WF_PER_CU 40
// Maximum number of workgroups per compute unit
`define WG_PER_WF 40
// Maximum number of wavefronts per wavegroup
`define WF_PER_WG 16
// Length of WF_ID in bits
`define WF_ID_LENGTH 6

// Length of operand field on instructions
`define OPERAND_LENGTH_2WORD 13
`define OPERAND_LENGTH_4WORD 14

`define VGPR_ADDR_LENGTH 10
`define SGPR_ADDR_LENGTH 9
// Single word length
`define WORD_LENGTH 32

// Number of VGPRS
`define NUMBER_VGPR 1024
// Number of SGPRs
`define NUMBER_SGPR 512

`endif  //_global_definitions_v_
