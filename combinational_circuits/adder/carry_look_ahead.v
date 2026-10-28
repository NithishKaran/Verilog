
module carry_look_ahead (input [3:0] A, B,input cin,output [3:0] sum,output cout);

wire [3:0] P, G;
wire c1, c2, c3;

assign P = A ^ B;
assign G = A & B;

assign c1 = G[0] | (P[0] & cin);

assign c2 = G[1] | (P[1] & G[0])| (P[1] & P[0] & cin);

assign c3 = G[2] | (P[2] & G[1])| (P[2] & P[1] & G[0])| (P[2] & P[1] & P[0] & cin);

assign cout = G[3] | (P[3] & G[2])| (P[3] & P[2] & G[1]) | (P[3] & P[2] & P[1] & G[0])| (P[3] & P[2] & P[1] & P[0] & cin);
    
assign sum[0] = P[0] ^ cin;
assign sum[1] = P[1] ^ c1;
assign sum[2] = P[2] ^ c2;
assign sum[3] = P[3] ^ c3;

endmodule
