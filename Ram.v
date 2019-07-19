module Ram256x16(
    ou,in,read,write,addr
);
    input[15:0] in,addr;
    input read,write;
    output reg[15:0] ou;
    integer i,j;
    reg[255:0] Ram[15:0];
    initial
    begin
        for(i=0;i<256;i = i+1)
        begin
            for(j=0;j<16;j = j+1)
            begin
                Ram[i][j] = 0;
            end
        end
    end
    always@(*)
    begin
        if(read) 
            ou = Ram[addr];
        else if(write)
            Ram[addr] = in;
    end
endmodule 