`timescale 1ns/1ps
module parity_generator_tb;
reg A, B, C, D;
wire Pe, Po;
integer i;

parity_generator uut(A,B,C,D,Pe,Po);

initial begin
$dumpfile("parity_generator.vcd");
$dumpvars(0,parity_generator_tb);

$monitor(" time=%0t A=%b B=%b C=%b D=%b | Pe=%b Po=%b", $time, A, B, C, D, Pe, Po);
for (i = 0; i < 16; i = i + 1) begin
        {A,B,C,D} = i;
        #10;
    end

    $finish;
end
endmodule