module counter;
reg [3:0] count;

initial begin
count = 0;
count <= count + 1;#1;
$display("count=%d", count);

count <= count + 1;#1;
$display("count=%d", count);

end
endmodule