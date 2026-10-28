`timescale 1ns/1ps
module decoder_3to8_tb;
reg y0, y1, y2;
wire d0, d1, d2, d3, d4, d5, d6, d7;

decoder_3to8 uut(.y0(y0), .y1(y1), .y2(y2), .d0(d0), .d1(d1), .d2(d2), .d3(d3), .d4(d4), .d5(d5), .d6(d6), .d7(d7));

initial begin

$dumpfile("decoder_3to8.vcd");
$dumpvars(0, decoder_3to8_tb);

$monitor("time=%0t y0=%b y1=%b y2=%b | d0=%b d1=%b d2=%b d3=%b d4=%b d5=%b d6=%b d7=%b", $time, y0, y1, y2, d0, d1, d2, d3, d4, d5, d6, d7);

y0=0; y1=0; y2=0; #10;
y0=0; y1=0; y2=1; #10;
y0=0; y1=1; y2=0; #10;
y0=0; y1=1; y2=1; #10;
y0=1; y1=0; y2=0; #10;
y0=1; y1=0; y2=1; #10;
y0=1; y1=1; y2=0; #10;
y0=1; y1=1; y2=1; #10;

$finish;

end

endmodule