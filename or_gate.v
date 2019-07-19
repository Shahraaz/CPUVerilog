module or_gate(ou,in0,in1);
input in0,in1;
output ou;
wire in0bar,in2bar;
not_gate not_gate_0(in0bar,in0);
not_gate not_gate_1(in1bar,in1);
nand(ou,in0bar,in1bar);
endmodule