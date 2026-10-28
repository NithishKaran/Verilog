module example2;
reg a;

initial begin
a <= 0;#2;
a <= 1;#1;
$display("a=%b", a);
end
endmodule