`timescale 1ns/1ps

module seq_det_111_nov_moore(
    input d_in, clk, rst,
    output reg d_out
);

parameter idle = 0;
parameter s0 = 1;
parameter s1 = 2;
parameter s2 = 3;
parameter s3 = 4;

reg state = idle, nstate = idle;


//Reset Logic Block
always@(posedge clk)
begin
    if (rst)
    begin
        state = idle;
    end
    else
        state = nstate;
end

//Output Logic Block
always@(state)
begin
    case(state)
    idle: d_out=0;
    s0: d_out=0;
    s1: d_out=0;
    s2: d_out=0;
    s3: d_out=1;
    default: d_out=0;
    endcase
end

//Next State Logic Block
always@(state, d_in, negedge rst) 
begin
    case(state)
    idle: begin
        if (rst)
            nstate = idle;
        else
            nstate = s0;
    end
    s0: begin
        if (d_in)
            nstate = s1;
        else
            nstate = s0;
    end
    s1: begin
        if (d_in)
            nstate = s2;
        else
            nstate = s0;
    end
    s2: begin
        if (d_in)
            nstate = s3;
        else
            nstate = s0;
    end
    s3:
    begin
        if (d_in)
            nstate=s3;
        else
            nstate=s0;
    end
    default:
        nstate = idle;
    endcase
end

endmodule