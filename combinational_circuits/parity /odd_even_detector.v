module odd_even_detector(
    input A, B, C, D,
    output Odd, Even
);

assign Odd  = A ^ B ^ C ^ D;
assign Even = ~(A ^ B ^ C ^ D);

endmodule