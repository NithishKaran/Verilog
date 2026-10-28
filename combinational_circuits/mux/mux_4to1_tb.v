`timescale 1ns/1ps

module mux_4to1_tb;

    reg a, b, c, d;
    reg s1, s0;
    wire y;

    mux_4to1 uut (.a(a),.b(b),.c(c),.d(d),.s1(s1),.s0(s0),.y(y));

    initial begin
        $dumpfile("mux_4to1.vcd");
        $dumpvars(0, mux_4to1_tb);

        $monitor("Time=%0t | s1=%b s0=%b | a=%b b=%b c=%b d=%b | y=%b",$time, s1, s0, a, b, c, d, y);

        a = 0; b = 1; c = 0; d = 1;

        s1 = 0; s0 = 0; #10;
        s1 = 0; s0 = 1; #10;
        s1 = 1; s0 = 0; #10;
        s1 = 1; s0 = 1; #10;

        $finish;
    end

endmodule