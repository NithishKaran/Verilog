module full_adder (input a, b, cin,output sum, cout);
wire x1, x2, x3;

xor (x1, a, b);
xor (sum, x1, cin);
and (x2, a, b);
and (x3, x1, cin);
or  (cout, x2, x3);

endmodule