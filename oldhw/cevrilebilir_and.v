`timescale 1ns / 1ps

module cevrilebilir_and(
    input A,B,
    output F
    );
    cevrilebilir_kapi cevrilebilir_and(.c(A),.p(0),.q(B),.z(F),.y(),.x());
endmodule
    