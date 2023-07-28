`timescale 1ns / 1ps


module cevrilebilir_kapi(
     input c,p,q,
     output x,y,z
    );
    buf i1(x,c);
    wire candp;
    and i2(candp,c,p);
    wire nC;
    not i3(nC,c);
    wire nCandQ;
    and i4(nCandQ,nC,q);
    or(y,nCandQ,candp);
    wire candq;
    wire nCandp;
    and i5(candq,c,q);
    and i6(nCandp,nC,p);
    or i7(z,nCandp,candq);

endmodule
