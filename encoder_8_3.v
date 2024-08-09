`timescale 1ns / 1ps

module encoder_8_3(
    input i0,
    input i1,
    input i2,
    input i3,
    input i4,
    input i5,
    input i6,
    input i7,
    output y0,
    output y1,
    output y2,
    input en
    );
    
assign y0 = en&(i1 | i3 | i5 | i7);
assign y1 = en&(i2 | i3 | i6 | i7);
assign y2 = en&(i4 | i5 | i6 | i7);

endmodule
