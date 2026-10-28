module comparator_3bit( input [2:0] A,B, output G, L, E);

assign G = (A > B);
assign L = (A < B);
assign E = (A == B);

endmodule