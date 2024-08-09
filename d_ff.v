`timescale 1ns / 1ps

module d_ff(
    input d,
    output reg q,
    output reg qb,
    input en,
    input clk,
    input clear //Active High Reset
);

initial
begin
q=0;
qb=1;
end

//Code for d-ff with synchronous reset(commneted)
/*
always @(posedge clk)
begin
    if (en==0) 
    begin
        q<=0;
        qb<=0;
    end
    else if (en==1 && clear==0)
    begin 
        q<=d;
        qb<=~d;                   
    end
    else 
    begin
        q<=0;
        qb<=1;
    end
end
*/


// Code for d-ff with asynchronous clear
//always block gets activated whenever one of the 
//statements of the always block is true.........

always @(posedge clk, posedge clear)
begin
    if (en == 0) 
    begin
    q<=0;
    qb<=0;
    end
    else if (en==1 && clear==0)
    begin 
        q<=d;
        qb<=~d;                      
    end
    else 
    begin
        q<=0;
        qb<=1;
    end
end 
 
endmodule
