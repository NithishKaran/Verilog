module comparator_2bit( input [1:0] A,B, output G, L, E);

assign G = (A > B);
assign L = (A < B);
assign E = (A == B);

endmodule
