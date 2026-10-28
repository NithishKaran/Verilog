module code1;
reg a, b;

initial begin
    a = 0;
    b = 1;
    $display("a=%b b=%b", a, b);
end

endmodule