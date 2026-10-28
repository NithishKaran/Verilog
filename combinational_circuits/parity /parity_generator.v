module parity_generator(input A, B, C, D, output Pe, Po);

assign Pe = A ^ B ^ C ^ D;
assign Po = ~(A ^ B ^ C ^ D);

endmodule