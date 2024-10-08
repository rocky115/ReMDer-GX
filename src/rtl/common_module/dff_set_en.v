
/* Copyright (C) 2019 Radhamadhab Dalai - All Rights Reserved
 * You may use, distribute and modify this code under the
 * terms of the license, which unfortunately won't be
 * written for another century.
 *
 * You should have received a copy of the license with
 * this file. If not, please write to: dalai115@gmail.com.
 */


module dff_set_en (q, d, en, clk, set);

  output q;
  input d;
  input en;
  input clk;
  input set;

  wire d_int, q1;

  assign d_int = en ? d : q1;
  assign q = q1;

  dff_set dff_0(.q(q1), .d(d_int), .clk(clk), .set(set));
  
endmodule
