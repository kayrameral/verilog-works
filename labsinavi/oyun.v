`timescale 1ns / 1ps


module oyun(
input [1:0]X11,
input [1:0]X12,
input [1:0]X13,
input [1:0]X21,
input [1:0]X22,
input [1:0]X23,
input [1:0]Y11,
input [1:0]Y12,
input [1:0]Y13,
input [1:0]Y21,
input [1:0]Y22,
input [1:0]Y23,
output O
    );
    wire FirstResult,SecondResult,ThirdResult;
    tur First(.X1(X11),.X2(X21),.Y1(Y11),.Y2(Y21),.B(FirstResult));
    tur Second(.X1(X12),.X2(X22),.Y1(Y12),.Y2(Y22),.B(SecondResult));
    tur Third(.X1(X13),.X2(X23),.Y1(Y13),.Y2(Y23),.B(ThirdResult));
    
    
    wire FirstandSecond,SecondandThird,FirstandThird;
    and(FirstandSecond,FirstResult,SecondResult);
    and(SecondandThird,ThirdResult,SecondResult);
    and(FirstandThird,FirstResult,ThirdResult);
    or(O,FirstandSecond,SecondandThird,FirstandThird);
    
    
    
endmodule
