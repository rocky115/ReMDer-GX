/* Copyright (C) 2019 Radhamadhab Dalai - All Rights Reserved
 * You may use, distribute and modify this code under the
 * terms of the license, which unfortunately won't be
 * written for another century.
 *
 * You should have received a copy of the license with
 * this file. If not, please write to: dalai115@gmail.com.
 */


module dff_set_en_rst(
   d,
   q,
   en,
   clk,
   set,
   rst );


   output q;
   input d;
   input en;
   input clk;
   input set;
   input rst;

   wire d_int;
   reg state;

   assign d_int = en ? d : state;

   assign q = state;

   always @(posedge clk or posedge rst)
   begin
      if(rst)
      state <= 0;
      else
      state <= set? 1 : d_int;
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
