
/* Copyright (C) 2019 Radhamadhab Dalai - All Rights Reserved
 * You may use, distribute and modify this code under the
 * terms of the license, which unfortunately won't be
 * written for another century.
 *
 * You should have received a copy of the license with
 * this file. If not, please write to: dalai115@gmail.com.
 */

module reg_param (out, in, wr_en, clk, rst);

parameter WIDTH = 2;

  output[WIDTH-1:0] out;
  input[WIDTH-1:0] in;
  input wr_en;
  input clk;
  input rst;

  dff_en bits[WIDTH - 1:0] (.q(out), .d(in), .en(wr_en), .clk(clk), .rst(rst));

endmodule
