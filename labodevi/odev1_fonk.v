`timescale 1ns / 1ps


module odev1_fonk(
input A,B,C,D,E,
output F
    );
    wire nA;
    not i1(nA,A);
    
    wire nD;
    not i2(nD,D);
    
    wire nE;
    not i3(nE,E);

    
    wire nC;
    not i5(nC,C);
    
    wire nAandBandCandnD;
    and i6(nAandBandCandnD,nA,B,C,nD);
    
    wire BandCandnE;
    and i7(BandCandnE,B,C,nE);
    
    wire nAandBandCandnDorBandCandnE;
    or i8(nAandBandCandnDorBandCandnE,BandCandnE,nAandBandCandnD);
    
    wire notnAandBandCandnDorBandCandnE;
    not i9(notnAandBandCandnDorBandCandnE,nAandBandCandnDorBandCandnE);
    
    wire nCandnD;
    and i10(nCandnD,nC,nD);
    
    wire AandBandD;
    and i11(AandBandD,A,B,D);
    
    wire nCandnDorAandBandD;
    or i12(nCandnDorAandBandD,AandBandD,nCandnD);
    
    or i13(F,nCandnDorAandBandD,notnAandBandCandnDorBandCandnE);
    
   
    
endmodule
