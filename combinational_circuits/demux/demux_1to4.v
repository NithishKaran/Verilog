module demux_1to4(input d, s0, s1, output y0, y1, y2, y3);
wire ns0, ns1;

not (ns0, s0);
not (ns1, s1);

and (y0, d, ns1, ns0);
and (y1, d, ns1, s0);
and (y2, d, s1, ns0);
and (y3, d, s1, s0);

endmodule
