`timescale 1ns / 1ps

module decoder_8_3(
    input i0,
    input i1,
    input i2,
    input en,
    output y0,
    output y1,
    output y2,
    output y3,
    output y4,
    output y5,
    output y6,
    output y7
    );
    
assign y0 = en&(~i0&~i1&~i2);
assign y1 = en&(i0&~i1&~i2);
assign y2 = en&(~i0&i1&~i2);
assign y3 = en&(i0&i1&~i2);
assign y4 = en&(~i0&~i1&i2);
assign y5 = en&(i0&~i1&i2);
assign y6 = en&(~i0&i1&i2);
assign y7 = en&(i0&i1&i2);

endmodule
