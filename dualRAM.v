`timescale 1ns / 1ps

// Dual port RAM-design of 2^6 blocks each having size of 8 bits
// Byte-addressable memory

module dual_ram(
    input clk,
    input w_en,
    input [5:0] read_address,
    input [5:0] write_address,
    input [7:0]data_in,
    output reg [7:0] data_out
);
    
reg [7:0] memory[63:0];

always@(posedge clk) 
begin
    if (w_en)
        memory[write_address] <= data_in;
    else
        data_out <= memory[read_address]; 
end

endmodule
