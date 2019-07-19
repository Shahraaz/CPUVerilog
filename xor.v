module xor_gate(
  ou,in0,in1
);
    input in0,in1;
    output ou;
    wire w1,w2in0bar,in1bar;
    not_gate not_gate_1(in0bar,in0);
    not_gate not_gate_2(in1bar,in1);
    nand(w1,in0,in1bar);
    nand(w2,in1,in0bar);
    nand(ou,w1,w2);
endmodule 