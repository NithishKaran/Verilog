`timescale 1ns/1ps
module muxx2_to1;
reg A,B,S;
reg Y;

always @(*) begin
if (S == 0)
Y = A;
else
Y = B;
end

initial begin
$monitor("time=%0t A=%b B=%b S=%b | Y=%b",$time, A, B, S, Y);
A=0; B=1; S=0; #10;
A=0; B=1; S=1; #10;
A=1; B=0; S=0; #10;
A=1; B=0; S=1; #10;

$finish;
end

endmodule