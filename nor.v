module nor_gate(
    ou,in0,in1
);
    output ou;
    input in0,in1;
    wire w;
    or_gate or_gate_1(w,in0,in1);
    not_gate not_gate_1(ou,w);
endmodule