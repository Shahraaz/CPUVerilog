module mux_2(
  ou,in0,in1,s
);
    input in0,in1,s;
    output ou;
    wire sbar,w1,w2;
    not_gate not_gate_1(sbar,s);
    and_gate and_gate_1(w1,sbar,in0);
    and_gate and_gate_2(w2,s,in1);
    or_gate or_gate_1(ou,w1,w2);
endmodule // mux_2