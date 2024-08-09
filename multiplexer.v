`timescale 1ns / 1ps

/*
very high verbosity
module multiplexer(
    input i0,i1,i2,i3,i4,i5,i6,i7,
    input s0,s1,s2,
    output y
    );
*/
//Continuous assignment
/* very high verbosity   
assign y =  ~s0&~s1&~s2&i0 | 
             s0&~s1&~s2&i1 |
            ~s0& s1&~s2&i2 | 
             s0& s1&~s2&i3 | 
            ~s0&~s1& s2&i4 | 
             s0&~s1& s2&i5 |
            ~s0& s1& s2&i6 |
             s0& s1& s2&i7;
*/

module multiplexer(
    input enable,
    input i0,i1,i2,i3,i4,i5,i6,i7,
    input [2:0] select,
    output reg y
    );
//Procedural Assignment
always@(*)
begin
if (enable == 1'b0) y=0;
else 
begin
case(select)
    3'b000: y=i0;
    3'b001: y=i1;
    3'b010: y=i2;
    3'b011: y=i3;
    3'b100: y=i4;
    3'b101: y=i5;
    3'b110: y=i6;
    3'b111: y=i7;
    default: y=i0;
endcase
end
end

endmodule
