`timescale 1ns / 1ps


module cevrilebilir_or(
input A,B,
output F
    );
    cevrilebilir_kapi cevrilebilir_or(.c(A),.p(1),.q(B),.z(),.y(F),.x());
endmodule
