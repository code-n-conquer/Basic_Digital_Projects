`timescale 1ns / 1ps

module tb_encoder_8_3();

reg en, i0, i1, i2, i3, i4, i5, i6, i7;

wire y0, y1, y2;

encoder_8_3 inst(en, i0, i1, i2, i3, i4, i5, i6, i7, y0, y1, y2);
initial begin 

en=1;i0=1;i1=0;i2=0;i3=0;i4=0;i5=0;i6=0;i7=0;
#10;

en=1;i0=0;i1=1;i2=0;i3=0;i4=0;i5=0;i6=0;i7=0;
#10;

en=1;i0=0;i1=0;i2=1;i3=0;i4=0;i5=0;i6=0;i7=0;
#10;

en=1;i0=0;i1=0;i2=0;i3=1;i4=0;i5=0;i6=0;i7=0;
#10;

en=1;i0=0;i1=0;i2=0;i3=0;i4=1;i5=0;i6=0;i7=0;
#10;

en=1;i0=0;i1=0;i2=0;i3=0;i4=0;i5=1;i6=0;i7=0;
#10;

en=1;i0=0;i1=0;i2=0;i3=0;i4=0;i5=0;i6=1;i7=0;
#10;

en=1;i0=0;i1=0;i2=0;i3=0;i4=0;i5=0;i6=0;i7=1;
#10;

$finish;
end
endmodule
