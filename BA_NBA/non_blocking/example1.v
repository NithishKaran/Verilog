module example1;
reg a;

initial begin
    a <= 1;#1;
    $display("a=%b", a);
end
endmodule