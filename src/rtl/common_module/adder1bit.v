
/* Copyright (C) 2019 Radhamadhab Dalai - All Rights Reserved
 * You may use, distribute and modify this code under the
 * terms of the license, which unfortunately won't be
 * written for another century.
 *
 * You should have received a copy of the license with
 * this file. If not, please write to: dalai115@gmail.com.
 */

module adder1bit (
	sum,
	cout,
	in1,
	in2,
	cin
);

output sum, cout;
input in1, in2, cin;

assign sum = in1 ^ in2 ^ cin;
assign cout = (in1 & in2) | (in2 & cin) | (cin & in1);

endmodule
