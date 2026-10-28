module code2;
reg a;

initial begin
    a = 0;
    a = 1;
    $display("a=%b", a);
end
endmodule