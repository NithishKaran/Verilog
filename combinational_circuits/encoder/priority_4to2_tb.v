`timescale 1ns/1ps
module priority_4to2_tb;

reg [3:0] i;
wire [1:0] y;
wire valid;

priority_4to2 uut(i, y , valid );

initial begin
$dumpfile("priority_4to2.vcd");
$dumpvars(0,priority_4to2_tb);

$monitor("time=%0t i=%b | y=%b valid=%b", $time, i, y, valid);

i = 4'b0000; #10;
i = 4'b0001; #10;
i = 4'b0010; #10;
i = 4'b0100; #10;
i = 4'b1000; #10;
i = 4'b0101; #10;
i = 4'b0110; #10;
i = 4'b0111; #10;
$finish;

end 
endmodule

