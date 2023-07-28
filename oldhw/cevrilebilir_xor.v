`timescale 1ns / 1ps

module cevrilebilir_xor(
    input A,B,
    output F
    );
    wire K,L,M,N;
    cevrilebilir_not cevrilebilir_xor5(.A(A),.F(K));
    cevrilebilir_and cevrilebilir_xor1(.A(K),.B(B),.F(L));
    cevrilebilir_not cevrilebilir_xor2(.A(B),.F(M));
    cevrilebilir_and cevrilebilir_xor3(.A(A),.B(M),.F(N));
    cevrilebilir_or cevrilebilir_xor4(.A(N),.B(L),.F(F));
endmodule
