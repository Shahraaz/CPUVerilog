module Alu(
    ou,in0,in1,azx,nx,zy,ny,f,no
);
    input[15:0] in0,in1;
    input azx,nx,zy,ny,f,no;
    output[15:0] ou;
    wire[15:0] in0final,in1final,in01,in11,in01bar,in11bar,fadd,fand,outemp,outempbar;
    mux_2 mux_2_1[15:0](in01,in0,16'b0000000000000000,azx);
    mux_2 mux_2_2[15:0](in11,in1,16'b0000000000000000,zy);
    not_gate not_gate_1[15:0](in01bar,in01);
    not_gate not_gate_2[15:0](in11bar,in11);
    mux_2 mux_2_3[15:0](in0final,in0,in01bar,nx);
    mux_2 mux_2_4[15:0](in1final,in1,in11bar,ny);
    Adder_16 Adder_16_1(,fadd,in0final,in1final,1'b0);
    and_gate and_gate_1[15:0](fand,in0final,in1final);
    mux_2 mux_2_5[15:0](outemp,fand,fadd,f);
    not_gate not_gate_3[15:0](outempbar,outemp);
    mux_2 mux_2_6[15:0](ou,outemp,outempbar,no);        
endmodule