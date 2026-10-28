module encoder_4to2(input i0, i1, i2, i3, output y0, y1);
 
or (y0, i3, i1);
or (y1, i3, i2);

endmodule