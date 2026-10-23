module mux_4to1( input a, b, c, d, s1, s0, output y  );
wire ns1, ns0, x1, x2, x3, x4;

not (ns1, s1);
not (ns0, s0);

and (x1, a, ns1, ns0);
and (x2, b, ns1, s0);
and (x3, c, s1, ns0);
and (x4, d, s1, s0);

or (y, x1, x2, x3, x4);
endmodule