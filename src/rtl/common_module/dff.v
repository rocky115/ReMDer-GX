/* Copyright (C) 2019 Radhamadhab Dalai - All Rights Reserved
 * You may use, distribute and modify this code under the
 * terms of the license, which unfortunately won't be
 * written for another century.
 *
 * You should have received a copy of the license with
 * this file. If not, please write to: dalai115@gmail.com.
 */


module dff (q, d, clk, rst);

   output         q;
   input          d;
   input          clk;
   input          rst;

   reg            state;

   assign q = state;

   always @(posedge clk)
   begin
      if (rst)
         state <= 1'b0;
      else
         state <= d;
   end

`ifdef dump_flops
   always @(posedge gpu_tb.rst)
   begin
      if ($test$plusargs("dump_flops"))
      begin
         $display("%m.state");
      end
   end
`endif
endmodule
