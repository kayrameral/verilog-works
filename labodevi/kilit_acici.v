`timescale 1ns / 1ps


module kilit_acici(
input [2:0] sag_adim,
input [1:0] sol_adim,
input [5:0] kilit_sifre,
output kilit_acik

    );
    wire [5:0] sifre;
    wire E;
    buf i1(E,sag_adim[2]);
    wire A;
    buf i2(A,sag_adim[1]);
    wire B;
    buf i3(B,sag_adim[0]);
    wire C;
    buf i4(C,sol_adim[1]);
    wire D;
    buf i5(D,sol_adim[0]);
    
    wire nE;
    not i6(nE,sag_adim[2]);
    wire nA;
    not i7(nA,sag_adim[1]);
    wire nB;
    not i8(nB,sag_adim[0]);
    wire nC;
    not i9(nC,sol_adim[1]);
    wire nD;
    not i10(nD,sol_adim[0]);
  //----------------------------------------------------  
    wire q51;
    and i11(q51,nA,nB,nC,D,nE);    
    wire q52;
    and i12(q52,nA,C,nD,nE);
    wire q53;
    and i13(q53,A,C,D,nE);
    wire q54;
    and i14(q54,A,nB,C,nE);
    wire q55;
    or i15(q55,q51,q52,q53,q54);
    
    wire q56;
    and i16(q56,nA,nC,nD,E);
    wire q57;
    and i17(q57,A,nB,nC,E);
    wire q58;
    and i18(q58,A,nC,D,E);
    wire q59;
    and i19(q59,nA,nB,C,D,E);
    wire q60;
    or i20(q60,q59,q58,q57,q56);
    
    or i21(sifre[4],q60,q55);
    //-------------------------------------------------
    wire q41;
    and i22(q41,nE,nA,B,nC,D);
    wire q42;
    and i23(q42,nE,A,B,C,nD);
    wire q43;
    or i24(q43,q42,q41);
    
    wire q44;
    and i25(q44,E,A,B,nC,nD);
    wire q45;
    and i26(q45,E,nA,B,C,D);
    wire q46;
    or i27(q46,q45,q44);
    
    or i28(sifre[5],q46,q43);
    //--------------------------------------------------
    wire q31;
    and i29(q31,nE,nA,nB,D);
    wire q32;
    and i30(q32,B,C,D,nE);
    wire q33;
    and i31(q33,nA,B,C,nE);
    wire q34;
    and i32(q34,nE,A,nC,nD);
    wire q35;
    and i33(q35,nE,A,C,nB,nD);
    wire q36;
    or i34(q36,q35,q34,q33,q32,q31);
    
    wire a31;
    and i35(a31,E,nA,nB,D);
    wire a32;
    and i36(a32,B,nA,nC,E);
    wire a33;
    and i37(a33,D,B,nC,E);
    wire a34;
    and i38(a34,E,A,C,nD);
    wire a35;
    and i39(a35,E,A,nC,nB,nD);
    wire a36;
    or i40(a36,a35,a34,a33,a32,a31);
    
    or i41(sifre[3],a36,q36);
    //--------------------------------------------------------
    wire q21;
    and i42(q21,nA,nB,nC,D,nE);
    wire q22;
    and i43(q22,nE,nA,nB,C,nD);
    wire q23;
    and i44(q23,nE,nA,B,C,D);
    wire q24;
    and i45(q24,nE,B,nC,nD);
    wire q25;
    and i46(q25,nE,A,B,nC);
    wire q26;
    and i47(q26,nE,A,nB,C);
    wire q27;
    or i48(q27,q26,q25,q24,q23,q22,q21);
    
    wire a21;
    and i49(a21,E,A,nB,nC);
    wire a22;
    and i50(a22,E,A,B,C);
    wire a23;
    and i51(a23,E,B,nD,C);
    wire a24;
    and i52(a24,E,C,D,nA,nB);
    wire a25;
    and i53(a25,E,nA,B,D,nC);
    wire a26;
    and i54(a26,E,nA,nB,nC,nD);
    wire a27;
    or i55(a27,a26,a25,a24,a23,a22,a21);
    
    or i56(sifre[2],a27,q27);
    //----------------------------------------------------------
    wire q11;
    and i57(q11,nA,D);
    wire q12;
    and i58(q12,A,nC,nD);
    wire q13;
    and i59(q13,A,C,nD);
    
    or i60(sifre[1],q13,q12,q11);
    //-----------------------------------------------------------
    buf i61(sifre[0],B);
    //-----------------------------------------------------------
    
    wire xor1;  
    wire xor2;  
    wire xor3;  
    wire xor4;  
    wire xor5;  
    wire xor0;  
    xnor i62(xor0,sifre[0],kilit_sifre[0]);
    xnor i63(xor1,sifre[1],kilit_sifre[1]);
    xnor i64(xor2,sifre[2],kilit_sifre[2]);
    xnor i65(xor3,sifre[3],kilit_sifre[3]);
    xnor i66(xor4,sifre[4],kilit_sifre[4]);
    xnor i67(xor5,sifre[5],kilit_sifre[5]);
    
    and i68(kilit_acik,xor0,xor1,xor2,xor3,xor4,xor5);  
    
endmodule
