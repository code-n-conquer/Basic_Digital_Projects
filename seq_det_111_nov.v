`timescale 1ns / 1ps

module seq_det_111_nov(
    input d_in, clk, rst,
    output reg d_out
);

parameter idle = 0;
parameter s0 = 1;
parameter s1 = 2;
parameter s2 = 3;

reg [1:0]state = idle;

// Mealy Machine Implementation 
//1-process FSM

always@(posedge clk)
begin
    if (rst == 1)
    begin
        state = idle;
        d_out=0;
    end
    else
    begin
        case(state)
        idle: begin
            state = s0;
            d_out = 0;
        end
        s0: begin
            d_out=0;
            if (d_in == 1)
                state = s1;
            else
                state = s0;
        end
        s1: begin
            d_out=0;
            if (d_in == 1)
                state = s2;
            else
                state = s0;
        end
        s2: begin
            if (d_in == 1)
            begin
                state = s0;
                d_out = 1;
            end
            else
            begin
                state = s0;
                d_out = 0;
            end
        end
        endcase
    end
end

endmodule