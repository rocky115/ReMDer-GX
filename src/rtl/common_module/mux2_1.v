/* Copyright (C) 2019 Radhamadhab Dalai - All Rights Reserved
 * You may use, distribute and modify this code under the
 * terms of the license, which unfortunately won't be
 * written for another century.
 *
 * You should have received a copy of the license with
 * this file. If not, please write to: dalai115@gmail.com.
 */


module mux2_1(InA,InB,S,out);
input InA,InB,S;
output out;
wire a1,a2,n1;

not1 n5(S,n1);
nand2 n4(InA,n1,a1);
nand2 n2(InB,S,a2);
nand2 n3(a1,a2,out);

endmodule
