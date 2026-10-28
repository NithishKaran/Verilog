`timescale 1ns/1ps
module gray_to_binary_tb;
reg [3:0] G;
wire [3:0] B;
integer i;

gray_to_binary uut(G,B);

initial begin
$dumpfile("gray_to_binary.vcd");
$dumpvars(0,gray_to_binary_tb);

$monitor("time=%0t G=%b | B=%b", $time, G, B);
for(i=0; i<16; i=i+1)begin
G=i;#10;
end
$finish;
end
endmodule


