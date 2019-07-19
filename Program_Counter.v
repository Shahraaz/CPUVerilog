module PC_16(
    pc,enable,reset,clk,pin,pcin
);
    output reg[15:0] pc;
    input enable,clk,reset,pin;
    input[15:0] pcin;
    initial
    begin
     pc = 16'b0;
    end
    always@(posedge clk)
    begin
        if(reset)
            pc = 16'b0;
        else if(enable)
            pc = pc + 1;
        else pc = pc;
    end
    always@(*)
    begin
        if(pin)
            pc = pcin;
    end
endmodule