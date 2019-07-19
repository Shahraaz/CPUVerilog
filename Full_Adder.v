module Full_adder(
  cout,sum,in0,in1,cin
);
    input in0,in1,cin;
    output cout,sum;
    wire wsum,wcarry,wcarry2;
    Half_Adder Half_Adder_1(wcarry,wsum,in0,in1);
    Half_Adder Half_Adder_2(wcarry2,sum,wsum,cin);
    or_gate or_gate_1(cout,wcarry,wcarry2);    
endmodule // Full_adde