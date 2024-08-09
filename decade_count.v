`timescale 1ns / 1ps
module decade_count(input clk, input en, output reg[3:0] count);

always @(posedge clk)
begin 
    if(en)
    begin
        if(count >= 4'd0 && count < 4'd9)
            count <= count+4'd1;
        else
            count <= 4'd0;
    end 
    else
        count <= 4'd0;   
end
endmodule
