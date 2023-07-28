`timescale 1ns / 1ps


module cevrilebilir_not(
    input A,
    output F
    );
    
    cevrilebilir_kapi cevrilebilir_not(.c(A),.p(1),.q(0),.z(F),.y(),.x());
endmodule
