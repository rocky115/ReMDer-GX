/* Copyright (C) 2019 Radhamadhab Dalai - All Rights Reserved
 * You may use, distribute and modify this code under the
 * terms of the license, which unfortunately won't be
 * written for another century.
 *
 * You should have received a copy of the license with
 * this file. If not, please write to: dalai115@gmail.com.
 */


module dest_shift_reg (
 alu_vgpr_dest_data,
 alu_sgpr_dest_data,
 alu_dest_vcc_value,
 alu_dest_exec_value,
 dest_buffer_wr_en,
 dest_buffer_shift_en,
 vgpr_dest_data,
 sgpr_dest_data,
 exec_wr_vcc_value,
 vgpr_wr_mask,
 clk,
 rst
);

input [511:0]   alu_vgpr_dest_data;
input [15:0]    alu_sgpr_dest_data;
input [15:0]    alu_dest_vcc_value;
input [15:0]    alu_dest_exec_value;
input           dest_buffer_wr_en;
input           dest_buffer_shift_en;
output [2047:0] vgpr_dest_data;
output [63:0]   sgpr_dest_data;
output [63:0]   exec_wr_vcc_value;
output [63:0]   vgpr_wr_mask;
input           clk;
input           rst;

shift_out #(32) vgpr_dest_shift(
  .data_in(alu_vgpr_dest_data),
  .wr_en(dest_buffer_wr_en),
  .shift_en(dest_buffer_shift_en),
  .data_out(vgpr_dest_data),
  .clk(clk),
  .rst(rst)
);

shift_out #(1) sgpr_dest_shift(
  .data_in(alu_sgpr_dest_data),
  .wr_en(dest_buffer_wr_en),
  .shift_en(dest_buffer_shift_en),
  .data_out(sgpr_dest_data),
  .clk(clk),
  .rst(rst)
);

shift_out #(1) exec_shift(
  .data_in(alu_dest_exec_value),
  .wr_en(dest_buffer_wr_en),
  .shift_en(dest_buffer_shift_en),
  .data_out(vgpr_wr_mask),
  .clk(clk),
  .rst(rst)
);

shift_out #(1) vcc_shift(
  .data_in(alu_dest_vcc_value),
  .wr_en(dest_buffer_wr_en),
  .shift_en(dest_buffer_shift_en),
  .data_out(exec_wr_vcc_value),
  .clk(clk),
  .rst(rst)
);

endmodule
