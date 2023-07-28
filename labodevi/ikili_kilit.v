`timescale 1ns / 1ps


module ikili_kilit(


    input [5:0] sag_adimlar,
    input [3:0] sol_adimlar,
    input [11:0] kilit_sifreler,
    output kilitler_acik 
    );
    wire x;
    wire y;
    kilit_acici x1(.sag_adim(sag_adimlar[5:3]),.sol_adim(sol_adimlar[3:2]),.kilit_sifre(kilit_sifreler[11:6]),.kilit_acik(x));
    kilit_acici x2(.sag_adim(sag_adimlar[2:0]),.sol_adim(sol_adimlar[1:0]),.kilit_sifre(kilit_sifreler[5:0]),.kilit_acik(y));
    
    and i1(kilitler_acik,x,y);
    
    
    
    
    
    
endmodule
