`timescale 1ns/1ps
module ripple_carry_adder_tb;
reg [3:0] A, B;
reg cin;
wire [3:0] sum;
wire cout;

ripple_carry_adder uut (.A(A), .B(B), .cin(cin),.sum(sum), .cout(cout));

initial begin
$dumpfile("ripple_carry_adder.vcd");
$dumpvars(0, ripple_carry_adder_tb);
$monitor("time=%0t A=%b B=%b cin=%b | cout=%b sum=%b", $time, A, B, cin, cout, sum);

A = 4'b0011; B = 4'b0010; cin = 0;#10;

A = 4'b0101; B = 4'b0011; cin = 0;#10;

A = 4'b1111; B = 4'b0001; cin = 0;#10;

A = 4'b1111; B = 4'b1111; cin = 1;#10;

$finish;
end

endmodule