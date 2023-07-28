`timescale 1ns / 1ps


module ons(
input [5:0]X,
output reg[11:0]Y
    );
    reg[11:0] helper;//helper kullan�yoruz ��nk� a�a��da Y=Y+!'den ka��nmak istiyoruz always blo�u i�inde ='in iki taraf�nda olmas� tehlikeli
    
    always@(*) begin
        helper=X*28.5;
        //if(X[0]==1)normalde kodu b�yle yazm��t�m ancak testbench sonu�lar�na g�re tek say�larda 1 fazla ��k�yor sonu�. muhtemelen vivado kendisi otomatik yuvarl�yor. testbench do�ru �al���yor bende.
            //Y=helper+1;
         //else 
            Y=helper;
    end
endmodule
