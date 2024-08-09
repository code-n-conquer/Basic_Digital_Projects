`timescale 1ns/1ps

//Byte-addressable memory
//64 X 8
//64 blocks capable of storing memory blocks of 1 Byte

module ram_single_port(
    input clk,
    input write_en,
    input reset,
    input [6:0] addr,
    input [7:0] data_in,
    output reg [7:0] data_out    
);

integer i;
reg [7:0] memory [63:0];
reg [7:0] temp;
reg [7:0] op_buff;

always@(posedge clk) 
begin
    if (reset == 1'b1)
    begin
        for (i=0;i<64;i=i+1) 
            memory[i] <= 8'h00;
        temp<=8'h00;
    end
    else
    begin
        if (write_en == 1)
        begin
            temp <= data_in;
            memory[addr] <= data_in;
        end
        else
        begin
            temp <= memory[addr];
            data_out <= memory[addr];
        end
    end  
end

endmodule