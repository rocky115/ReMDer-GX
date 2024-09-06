/* Copyright (C) 2019 Radhamadhab Dalai - All Rights Reserved
 * You may use, distribute and modify this code under the
 * terms of the license, which unfortunately won't be
 * written for another century.
 *
 * You should have received a copy of the license with
 * this file. If not, please write to: dalai115@gmail.com.
 */


module mux_2_to_1 (out, in, select);

  parameter WIDTH = 1;
  output [WIDTH-1:0] out;
  input [(2*WIDTH)-1:0] in;
  input select;

  reg [WIDTH-1:0] out;

  always @ (in or select) begin
    casex(select)
      1'b0: out <= in[WIDTH-1:0];
      1'b1: out <= in[(2*WIDTH)-1:WIDTH];
      default: out <= {WIDTH{1'bx}};
    endcase
  end
endmodule
