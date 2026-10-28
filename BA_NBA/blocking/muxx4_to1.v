
`timescale 1ns/1ps
module mux4to1;
reg A, B, C, D;
reg S1, S0;
reg Y;

always @(*) begin
if (S1 == 0 && S0 == 0)
Y = A;
else if (S1 == 0 && S0 == 1)
Y = B;
else if (S1 == 1 && S0 == 0)
Y = C;
else
Y = D;
end

initial begin
$monitor("time=%0t A=%b B=%b C=%b D=%b S1=%b S0=%b | Y=%b",$time, A, B, C, D, S1, S0, Y);

A=0; B=1; C=0; D=1;

S1=0; S0=0; #10;
S1=0; S0=1; #10;
S1=1; S0=0; #10;
S1=1; S0=1; #10;

$finish;
end

endmodule
