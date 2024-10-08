/* Copyright (C) 2019 Radhamadhab Dalai - All Rights Reserved
 * You may use, distribute and modify this code under the
 * terms of the license, which unfortunately won't be
 * written for another century.
 *
 * You should have received a copy of the license with
 * this file. If not, please write to: dalai115@gmail.com.
 */


module mux_param (out, in, select);

   parameter BITS = 2;
   parameter SIZE = 4;
   parameter WIDTH = 1;

   output [WIDTH - 1:0] out;
   input [(SIZE * WIDTH) - 1:0] in;
   input [BITS - 1:0] select;

   reg [WIDTH - 1:0] out;

   integer i;

   always @ (in or select)
      begin
         out = {WIDTH{1'bx}};
         for(i = 0; i < SIZE; i = i + 1)
         begin
            if (select == i)
            begin
               out = in[(WIDTH * (i+1)) - 1-:WIDTH];
            end
         end
      end
endmodule
