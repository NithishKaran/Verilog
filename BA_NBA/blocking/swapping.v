module swapping;
reg a, b, temp;
initial begin
a = 0;
b = 1;

temp = a;
a = b;
b = temp;

$display("a=%b b=%b", a, b);
end
endmodule