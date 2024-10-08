/* Copyright (C) 2019 Radhamadhab Dalai - All Rights Reserved
 * You may use, distribute and modify this code under the
 * terms of the license, which unfortunately won't be
 * written for another century.
 *
 * You should have received a copy of the license with
 * this file. If not, please write to: dalai115@gmail.com.
 */

module decoder_param (out, in);

   parameter BITS = 2;
   parameter SIZE = 4;

   output [SIZE - 1:0] out;
   input [BITS - 1:0] in;

   reg [SIZE -1: 0] out;
   integer i;

   always @ (in)
      begin
         for(i = 0; i < SIZE; i = i + 1)
         begin
            out[i] = (in == i) ? 1'b1 : 1'b0;
         end
      end

endmodule
