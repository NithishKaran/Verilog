`timescale 1ns/1ps

module demux_1to4_tb;
reg d, s0, s1;
wire y0, y1, y2, y3;

demux_1to4 uut(.d(d), .s0(s0), .s1(s1), .y0(y0), .y1(y1), .y2(y2), .y3(y3));

initial begin

$dumpfile("demux_1to4.vcd");
$dumpvars(0, demux_1to4_tb);

$monitor("time=%0t d=%b s0=%b s1=%b | y0=%b y1=%b y2=%b y3=%b", $time , d, s0, s1, y0, y1, y2, y3);

d=1;
s0=0; s1=0; #10;
s0=0; s1=1; #10;
s0=1; s1=0; #10;
s0=1; s1=1; #10;
d=0; #10;

$finish;

end
endmodule