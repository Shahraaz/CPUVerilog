module CPU(ProgramMEMORY,inreg,oureg,clk);
    input [15:0] inreg;
    output [15:0] oureg;
    input [0:31]ProgramMEMORY;
    reg [15:0] MainMemory[0:15];
    integer i,j,pc,flag;
    initial
    begin
        MainMemory[1] = 16'b0000000000000000;
        MainMemory[0] = 16'b1111000000000000; 
    //   for(i=0;i<2;i=i+1)
        // for(j=0;j<16;j=j+1)
        //   MainMemory[i][j] = ProgramMEMORY[16*i+j];
    end
    input clk;
    reg[15:0] addr,CPU_VARIABLE[15:0];
    reg[15:0] IR,rout,rin,alu0,alu1,pcin;
    reg read,write,azx,reset,nx,zy,ny,f,no,pin;
    wire[15:0] aluout;
    initial
    begin
        pc = 0;
        reset = 0;
        flag = 1;
    end
    // PC_16 PC_16_1(PC,1'b1,reset,clk,pin,pcin);
    Alu Alu_1(aluout,alu0,alu1,azx,nx,zy,ny,f,no);
    // Ram256x16 Ram256x16_1(rout,rin,read,write,addr);
    always@(posedge clk)
    begin
        for(j=0;j<16;j=j+1)
            IR[j] = ProgramMEMORY[pc+j];
        if(flag)
        begin
        case (IR[15:12])
            4'b0000:
            begin
              alu0 = CPU_VARIABLE[IR[7:4]];
              alu1 = CPU_VARIABLE[IR[3:0]];
              azx = 0;nx=0;zy=0;ny=0;f=1;no=0;
               #2 CPU_VARIABLE[IR[11:8]] = aluout;
               pc = pc + 16;
            end
            4'b0001:
            begin
              alu0 = CPU_VARIABLE[IR[7:4]];
              alu1 = CPU_VARIABLE[IR[3:0]];
              azx = 0;nx=1;zy=0;ny=0;f=1;no=1;
              #2 CPU_VARIABLE[IR[11:8]] = aluout;
              pc = pc + 16;
            end
            4'b1111:
            begin
                flag = 0;
                reset = 0;
                pc = 0;
            end
        endcase
        end
    end
endmodule