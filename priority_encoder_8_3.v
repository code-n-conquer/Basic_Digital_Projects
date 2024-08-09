`timescale 1ns / 1ps

//Defining module
module priority_encoder_8_3(
    input [7:0] in,
    input en,
    output reg[2:0] y
);

//Initializing output as 0
initial begin
y=0;
end

//Logic for prioirty encoder(not Boolean)
always@(*)
begin
    if (en==0)
    begin
        y=3'b000;
    end
    else
    begin
        if (in[7] == 1)
            y=3'b111;
        else if (in[6] == 1)
            y=3'b110;
        else if (in[5] == 1)
            y=3'b101;
        else if (in[4] == 1)
            y=3'b100;
        else if (in[3] == 1)
            y=3'b011;
        else if (in[2] == 1)
            y=3'b010;
        else if (in[1] == 1)
            y=3'b001;
        else 
            y=3'b000;
    end
end
endmodule
