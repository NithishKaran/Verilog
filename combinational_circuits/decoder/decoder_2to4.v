module decoder_2to4(input y0, y1, output d0, d1, d2, d3);
wire ny0, ny1;

not(ny0, y0);
not(ny1, y1);

and(d0, ny0, ny1);
and(d1, ny0, y1);
and(d2, y0, ny1);
and(d3, y0, y1);

endmodule