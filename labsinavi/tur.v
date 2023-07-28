`timescale 1ns / 1ps


module tur(
    input[1:0]X1,
    input[1:0]X2,
    input[1:0]Y1,
    input[1:0]Y2,
    output B
    );
    wire [1:0]FirstPoint;
    wire [1:0]SecondPoint;
    
    dart First(.X(X1),.Y(Y1),.P(FirstPoint));
    dart Second(.X(X2),.Y(Y2),.P(SecondPoint));
    wire S0orF0;
    or(S0orF0,FirstPoint[0],SecondPoint[0]);
    and(B,FirstPoint[1],S0orF0,SecondPoint[1]);
    
endmodule
