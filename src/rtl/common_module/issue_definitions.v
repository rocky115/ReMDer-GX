/* Copyright (C) 2019 Radhamadhab Dalai - All Rights Reserved
 * You may use, distribute and modify this code under the
 * terms of the license, which unfortunately won't be
 * written for another century.
 *
 * You should have received a copy of the license with
 * this file. If not, please write to: dalai115@gmail.com.
 */

`ifndef _issue_definitions_v_
`define _issue_definitions_v_


`define ISSUE_INSTR_INFO_LENGTH (16+1+1+1+1+1+32+32+16+32+14+13+13+14+14+13)
`define ISSUE_LDS_BASE_H (`ISSUE_LDS_BASE_L + 16-1)
`define ISSUE_LDS_BASE_L (`ISSUE_BRANCH + 1)
`define ISSUE_BRANCH (`ISSUE_VCC_WR+1)
`define ISSUE_VCC_WR (`ISSUE_SCC_WR+1)
`define ISSUE_SCC_WR (`ISSUE_EXEC_WR+1)
`define ISSUE_EXEC_WR (`ISSUE_M0_WR+1)
`define ISSUE_M0_WR (`ISSUE_PC_H+1)
`define ISSUE_PC_H (`ISSUE_PC_L+ 32-1)
`define ISSUE_PC_L (`ISSUE_OP_H+ 1)
`define ISSUE_OP_H (`ISSUE_OP_L+ 32-1)
`define ISSUE_OP_L (`ISSUE_IM0_H+ 1)
`define ISSUE_IM0_H (`ISSUE_IM0_L+ 16-1)
`define ISSUE_IM0_L (`ISSUE_IM1_H+ 1)
`define ISSUE_IM1_H (`ISSUE_IM1_L+ 32-1)
`define ISSUE_IM1_L (`ISSUE_SRC1_H+ 1)
`define ISSUE_SRC1_H (`ISSUE_SRC1_L+ 14-1)
`define ISSUE_SRC1_L (`ISSUE_SRC2_H+ 1)
`define ISSUE_SRC2_H (`ISSUE_SRC2_L+ 13-1)
`define ISSUE_SRC2_L (`ISSUE_SRC3_H+ 1)
`define ISSUE_SRC3_H (`ISSUE_SRC3_L+ 13-1)
`define ISSUE_SRC3_L (`ISSUE_SRC4_H+ 1)
`define ISSUE_SRC4_H (`ISSUE_SRC4_L + 14-1)
`define ISSUE_SRC4_L  (`ISSUE_DST1_H + 1)
`define ISSUE_DST1_H (`ISSUE_DST1_L+14-1)
`define ISSUE_DST1_L (`ISSUE_DST2_H+1)
`define ISSUE_DST2_H (`ISSUE_DST2_L+13-1)
`define ISSUE_DST2_L 0

`define ISSUE_OPER_4WORD_BIT 13 
`define ISSUE_OPER_2WORD_BIT 12
`define ISSUE_OPER_VALID_BIT 11
`define ISSUE_OPER_VSGPR_BIT 10

`define ISSUE_GPR_RD_BITS_LENGTH (4+2+2+4+4+2)
`define ISSUE_SRC1_R_H (`ISSUE_SRC1_R_L+ 4-1)
`define ISSUE_SRC1_R_L (`ISSUE_SRC2_R_H+ 1)
`define ISSUE_SRC2_R_H (`ISSUE_SRC2_R_L+ 2-1)
`define ISSUE_SRC2_R_L (`ISSUE_SRC3_R_H+ 1)
`define ISSUE_SRC3_R_H (`ISSUE_SRC3_R_L+ 2-1)
`define ISSUE_SRC3_R_L (`ISSUE_SRC4_R_H+ 1)
`define ISSUE_SRC4_R_H (`ISSUE_SRC4_R_L+ 4-1)
`define ISSUE_SRC4_R_L (`ISSUE_DST1_R_H+ 1)
`define ISSUE_DST1_R_H (`ISSUE_DST1_R_L+ 4-1)
`define ISSUE_DST1_R_L (`ISSUE_DST2_R_H+ 1)
`define ISSUE_DST2_R_H (`ISSUE_DST2_R_L+ 2-1)
`define ISSUE_DST2_R_L 0

`define ISSUE_SPR_RD_BITS_LENGTH (1+1+1+1)
`define ISSUE_M0_R (`ISSUE_SCC_R + 1)
`define ISSUE_SCC_R (`ISSUE_VCC_R+ 1)
`define ISSUE_VCC_R (`ISSUE_EXEC_R+ 1)
`define ISSUE_EXEC_R 0

`define ISSUE_OP_4WORD_BIT `ISSUE_OPER_VALID_BIT+2
`define ISSUE_OP_2WORD_BIT `ISSUE_OPER_VALID_BIT+1
`define ISSUE_OP_VALID_H `ISSUE_OPER_VALID_BIT
`define ISSUE_OP_VALID_SGPR_L `ISSUE_OPER_VALID_BIT-2
`define ISSUE_OP_VALID_VGPR_L `ISSUE_OPER_VALID_BIT-1
`define ISSUE_VALID_VGPR_ID 2'b10
`define ISSUE_VALID_SR_ID 2'b11
`define ISSUE_VALID_SGPR_ID 3'b110


`define ISSUE_FU_SIMF_ENCODING 2'b00
`define ISSUE_FU_SIMD_ENCODING 2'b01
`define ISSUE_FU_LSU_ENCODING  2'b11
`define ISSUE_FU_SALU_ENCODING 2'b10

`endif // _issue_definitions_v_
