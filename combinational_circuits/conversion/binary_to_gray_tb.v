module binary_to_gray_tb;
reg [3:0] B;
wire [3:0] G;
integer i;

binary_to_gray uut(B,G);

initial begin
$dumpfile("binary_to_gray.vcd");
$dumpvars(0,binary_to_gray_tb);

$monitor("time=%0t B=%b | G=%b", $time, B, G);

for(i=0; i<16; i=i+1)begin
B=i;#10;
end
$finish;
end
endmodule
