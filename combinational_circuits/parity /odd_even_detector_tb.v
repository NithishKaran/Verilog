`timescale 1ns/1ps
module odd_even_detector_tb;
reg A, B, C, D;
wire odd, Even;
integer i;

odd_even_detector uut(A, B, C, D, odd, Even);

initial begin
$dumpfile("odd_even_detector.vcd");
$dumpvars(0,odd_even_detector_tb);


$monitor(" time=%0t A=%b B=%b C=%b D=%b  | odd=%b Even=%b", $time, A, B, C, D, odd, Even);
for (i = 0; i < 16; i = i + 1) begin
        {A,B,C,D} = i;
        #10;
    end

    $finish;
end
endmodule