`timescale 1ns / 1ps

module dart(
input [1:0]Y,
input [1:0]X,
output [1:0]P
    );
    wire nX1,nX0,nY1,nY0;
    not(nX1,X[1]);
    not(nX0,X[0]);
    not(nY1,Y[1]);
    not(nY0,Y[0]);
    wire X0andY1andnY0,X1andnX0andY1,X1andnX0andY0;
    and(X0andY1andnY0,X[0],Y[1],nY0);
    and(X1andnX0andY1,X[1],nX0,Y[1]);
    and(X1andnX0andY0,X[1],nX0,Y[0]);
    or(P[1],X1andnX0andY0,X1andnX0andY1,X0andY1andnY0);
    wire X0andY0,X1andnX0andY1andnY0;
    and(X0andY0,X[0],Y[0]);
    and(X1andnX0andY1andnY0,X[1],nX0,nY0,Y[1]);
    or(P[0],X1andnX0andY1andnY0,X0andY0);
endmodule
