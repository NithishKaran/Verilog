`timescale 1ns/1ps
module comparator_2bit_tb;
reg [1:0] A, B;
wire G, L, E;
integer i, j;

comparator_2bit uut(A, B, G, L, E);

initial begin
$dumpfile("comparator_2bit.vcd");
$dumpvars(0,comparator_2bit_tb);
$monitor("time=%0t A=%b B=%b | G=%b L=%b, E=%b", $time, A, B, G, L, E);
    for (i = 0; i < 4; i = i + 1) begin
        for (j = 0; j < 4; j = j + 1) begin
            A = i;
            B = j;
            #10;
            
            $display("A=%b B=%b | G=%b L=%b E=%b",
                 A, B, G, L, E);
        end
    end

    $finish;
end

endmodule