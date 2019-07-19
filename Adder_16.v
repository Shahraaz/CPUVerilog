module Adder_16(
  cout,ou,in0,in1,cin
);
    input cin;
    input[15:0] in0,in1;
    output cout;
    output[15:0] ou;
    wire[15:0] carry;
    Full_adder Full_adder_1(carry[0],ou[0],in0[0],in1[0],cin);
    Full_adder Full_adder_2(carry[1],ou[1],in0[1],in1[1],carry[0]);
    Full_adder Full_adder_3(carry[2],ou[2],in0[2],in1[2],carry[1]);
    Full_adder Full_adder_4(carry[3],ou[3],in0[3],in1[3],carry[2]);
    Full_adder Full_adder_5(carry[4],ou[4],in0[4],in1[4],carry[3]);
    Full_adder Full_adder_6(carry[5],ou[5],in0[5],in1[5],carry[4]);
    Full_adder Full_adder_7(carry[6],ou[6],in0[6],in1[6],carry[5]);
    Full_adder Full_adder_8(carry[7],ou[7],in0[7],in1[7],carry[6]);
    Full_adder Full_adder_9(carry[8],ou[8],in0[8],in1[8],carry[7]);
    Full_adder Full_adder_10(carry[9],ou[9],in0[9],in1[9],carry[8]);
    Full_adder Full_adder_11(carry[10],ou[10],in0[10],in1[10],carry[9]);
    Full_adder Full_adder_12(carry[11],ou[11],in0[11],in1[11],carry[10]);
    Full_adder Full_adder_13(carry[12],ou[12],in0[12],in1[12],carry[11]);
    Full_adder Full_adder_14(carry[13],ou[13],in0[13],in1[13],carry[12]);
    Full_adder Full_adder_15(carry[14],ou[14],in0[14],in1[14],carry[13]);
    Full_adder Full_adder_16(cout,ou[15],in0[15],in1[15],carry[14]);
endmodule // Adder_16