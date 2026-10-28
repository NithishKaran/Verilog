module parity_checker(input A, B, C, D, P, output Pec, Poc);

assign Pec = A ^ B ^ C ^ D ^ P;
assign Poc = ~(A ^ B ^ C ^ D ^ P);

endmodule