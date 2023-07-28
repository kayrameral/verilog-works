`timescale 1ns / 1ps


module ons(
input [5:0]X,
output reg[11:0]Y
    );
    reg[11:0] helper;//helper kullanýyoruz çünkü aþaðýda Y=Y+!'den kaçýnmak istiyoruz always bloðu içinde ='in iki tarafýnda olmasý tehlikeli
    
    always@(*) begin
        helper=X*28.5;
        //if(X[0]==1)normalde kodu böyle yazmýþtým ancak testbench sonuçlarýna göre tek sayýlarda 1 fazla çýkýyor sonuç. muhtemelen vivado kendisi otomatik yuvarlýyor. testbench doðru çalýþýyor bende.
            //Y=helper+1;
         //else 
            Y=helper;
    end
endmodule
