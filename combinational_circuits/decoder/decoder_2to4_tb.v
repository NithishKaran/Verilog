`timescale 1ns/1ps
module decoder_2to4_tb;
reg y0, y1;
wire d0, d1, d2, d3;

decoder_2to4 uut(.y0(y0), .y1(y1), .d0(d0), .d1(d1), .d2(d2), .d3(d3));

initial begin

$dumpfile("decoder_2to4.vcd");
$dumpvars(0, decoder_2to4_tb);

$monitor("time=%0t y0=%b y1=%b | d0=%b d1=%b d2=%b d3=%b", $time, y0, y1, d0, d1, d2, d3);

y0=0; y1=0; #10;
y0=0; y1=1; #10;
y0=1; y1=0; #10;
y0=1; y1=1; #10;

$finish;

end

endmodule


