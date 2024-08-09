`timescale 1ns / 1ps

module demultiplexer(
    input i,s0,s1,s2,
    output y0,y1,y2,y3,y4,y5,y6,y7
);
    
assign y0 = ~s0&~s1&~s2&i; 
assign y1 =  s0&~s1&~s2&i; 
assign y2 = ~s0&s1&~s2&i;
assign y3 =  s0&s1&~s2&i; 
assign y4 = ~s0&~s1&s2&i; 
assign y5 =  s0&~s1&s2&i;
assign y6 = ~s0&s1&s2&i;
assign y7 =  s0&s1&s2&i;
             
endmodule
