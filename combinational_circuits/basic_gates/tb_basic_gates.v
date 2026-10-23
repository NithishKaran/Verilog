module tb_basic_gates;
reg a, b;
wire y_and, y_or, y_not;
wire y_nand, y_nor, y_xor, y_xnor;

basic_gates uut (.a(a),.b(b),.y_and(y_and),.y_or(y_or),.y_not(y_not),
.y_nand(y_nand),.y_nor(y_nor),.y_xor(y_xor),.y_xnor(y_xnor));

initial begin
        $dumpfile("basic_gates.vcd");
        $dumpvars(0, tb_basic_gates);
        $monitor("time=%0t a=%b b=%b AND=%b OR=%b NOT=%b NAND=%b NOR=%b XOR=%b XNOR=%b",
        $time, a, b, y_and, y_or, y_not,y_nand, y_nor, y_xor, y_xnor);

        a = 0; b = 0; #10;
        a = 0; b = 1; #10;
        a = 1; b = 0; #10;
        a = 1; b = 1; #10;

        $finish;
    end

endmodule
