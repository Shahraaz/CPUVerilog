module Half_Adder(
  cout,sum,in0,in1
);
    input in0,in1;
    output cout,sum;
    xor_gate xor_gate_1(sum,in0,in1);
    and_gate and_gate_1(cout,in0,in1);
endmodule // Half_Adder         