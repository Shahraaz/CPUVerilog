module and_gate(ou,in0,in1);
input in0,in1;
output ou;
wire w1;
nand(w1,in0,in1);
nand(ou,w1,w1);
endmodule