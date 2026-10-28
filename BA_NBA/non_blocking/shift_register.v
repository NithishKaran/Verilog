module shift_register;
reg a, b, c;
initial begin
a = 1;
b = 0;
c = 0;

a <= 0;
b <= a;
c <= b;
#1;

$display("a=%b b=%b c=%b", a, b, c);
end
endmodule