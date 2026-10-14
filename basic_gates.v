module basic_gates (input a, b,output y_and, y_or, y_not,
output y_nand, y_nor, y_xor, y_xnor);

and  (y_and, a, b);
or   (y_or, a, b);
not  (y_not, a);
nand (y_nand, a, b);
nor  (y_nor, a, b);
xor  (y_xor, a, b);
xnor (y_xnor, a, b);

endmodule