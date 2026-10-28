module demux_1to2(input d, s, output y0, y1);
wire ns;
not(ns,s);
and(y0, d, ns);
and(y1, d, s);
endmodule

