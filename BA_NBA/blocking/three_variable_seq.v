module three_variable_seq;
reg a, b, c;

initial begin
    a = 0;
    b = a;
    c = b;

    $display("a=%b b=%b c=%b", a, b, c);
end
endmodule