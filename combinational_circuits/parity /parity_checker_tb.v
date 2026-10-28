`timescale 1ns/1ps
module parity_checker_tb;
reg A, B, C, D, P;
wire Pec, Poc;
integer i;

parity_checker uut(A,B,C,D,P,Pec,Poc);

initial begin
$dumpfile("parity_checker.vcd");
$dumpvars(0,parity_checker_tb);

$monitor(" time=%0t A=%b B=%b C=%b D=%b P=%b | Pec=%b Poc=%b", $time, A, B, C, D, P, Pec, Poc);
for (i = 0; i < 32; i = i + 1) begin
        {A,B,C,D,P} = i;
        #10;
    end

    $finish;
end
endmodule