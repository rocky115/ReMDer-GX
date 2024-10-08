
/* Copyright (C) 2019 Radhamadhab Dalai - All Rights Reserved
 * You may use, distribute and modify this code under the
 * terms of the license, which unfortunately won't be
 * written for another century.
 *
 * You should have received a copy of the license with
 * this file. If not, please write to: dalai115@gmail.com.
 */

module regfile(
	d_in, 
	wr_en, 
	d_out, 
	clk, 
	rst
);  
  
parameter BITWIDTH = 11;

input [BITWIDTH-1:0] d_in;
input wr_en, clk, rst;

output [BITWIDTH-1:0] d_out;

wire [BITWIDTH-1:0] out;

dff d1[BITWIDTH-1:0](.q(d_out), .d(out), .clk(clk), .rst(rst));

mux2_1 m1[BITWIDTH-1:0](.InA(d_out), .InB(d_in), .out(out), .S(wr_en));
  
endmodule
