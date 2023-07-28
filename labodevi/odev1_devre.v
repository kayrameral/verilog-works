`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.06.2023 11:17:12
// Design Name: 
// Module Name: odev1_devre
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module odev1_devre(
    input A,B,C,
    output F,Q
    );
    
    wire bufA;
    buf i1(bufA,A);
    
    wire bufAnorB;
    nor i2(bufAnorB,B,bufA);
    
    wire nC;
    not i3(nC,C);
    
    wire nCnandbufAnorB;
    nand i4(nCnandbufAnorB,nC,bufAnorB);
    
    wire nCandZero;
    and i5(nCandZero,nC,0);
    
    wire nCandZeroxornCnandbufAnorB;
    xor i6(nCandZeroxornCnandbufAnorB,nCandZero,nCnandbufAnorB);
    
    wire nCandZeroxnornCnandbufAnorB;
    xnor i7(nCandZeroxnornCnandbufAnorB,nCandZero,nCnandbufAnorB);
    
    or i8(Q,nCandZeroxornCnandbufAnorB,nCandZeroxnornCnandbufAnorB);
    
    xor i9(F,nCandZero,nCnandbufAnorB);
    
    
    
endmodule
