module full_subtractor (input a, b, bin,output diff, bout);
wire x1, x2, x3, x4, na;

xor (x1, a, b);
xor (diff, x1, bin);
xor (x2, b,bin);
not (na,a);
and (x3, x2, na);
and (x4, b, bin);

or  (bout, x3, x4);

endmodule