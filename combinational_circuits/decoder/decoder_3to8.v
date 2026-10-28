module decoder_3to8(input y0, y1, y2, output d0, d1, d2, d3, d4, d5, d6, d7);
wire ny0, ny1, ny2;

not (ny0, y0);
not (ny1, y1);
not (ny2, y2);

and (d0, ny0,ny1,ny2);
and (d1, ny0,ny1,y2);
and (d2, ny0,y1,ny2);
and (d3, ny0, y1,y2);
and (d4, y0,ny1,ny2);
and (d5, y0,ny1,y2);
and (d6, y0,y1,ny2);
and (d7, y0,y1,y2);

endmodule