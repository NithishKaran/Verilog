`timescale 1ns/1ps
module comparator_4bit_tb;
reg [3:0] A, B;
wire G, L, E;
integer i, j;

comparator_4bit uut(A, B, G, L, E);

initial begin
$dumpfile("comparator_4bit.vcd");
$dumpvars(0,comparator_4bit_tb);
$monitor("time=%0t A=%b B=%b | G=%b L=%b, E=%b", $time, A, B, G, L, E);
    for (i = 0; i < 16; i = i + 1) begin
        for (j = 0; j < 16; j = j + 1) begin
            A = i;
            B = j;
            #10;
            
        end
    end

    $finish;
end
endmodule