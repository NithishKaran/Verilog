module mux_2to1 (input a, b, s,output y);
wire ns, x1, x2;

not (ns,s);
and (x1,ns,a);
and (x2,s,b);
or (y,x1,x2);
endmodule