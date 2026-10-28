`timescale 1ns/1ps

module d_ff;
reg clk, D;
reg Q;

always @(posedge clk) begin
Q <= D;
end

initial begin
clk = 0;
D = 0;
Q = 0;

$monitor("time=%0t clk=%b D=%b Q=%b", $time, clk, D, Q);

#5 D = 1;
#10 D = 0;
#10 $finish;
end

always #5 clk = ~clk;

endmodule

