module priority_4to2(input [3:0] i, output [1:0] y, output valid);

assign y[0] = i[3] | (i[1] & ~i[2]);
assign y[1] = i[3] | i[2];
assign valid = i[3] | i[2] | i[1] | i[0];

endmodule