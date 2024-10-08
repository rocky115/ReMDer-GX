/* Copyright (C) 2019 Radhamadhab Dalai - All Rights Reserved
 * You may use, distribute and modify this code under the
 * terms of the license, which unfortunately won't be
 * written for another century.
 *
 * You should have received a copy of the license with
 * this file. If not, please write to: dalai115@gmail.com.
 */


module reg_40b_set (out, in, wr_en, clk, set);

  output [39:0] out;
  input [39:0] in;
  input wr_en;
  input clk;
  input set;

  dff_set_en bits[39:0] (.q(out), .d(in), .en(wr_en), .clk(clk), .set(set));

endmodule
