function [dif]=fvanderpauw(RA,RB,RS)
%esta es una función que permite conocer si se cumple la ecuacion de Van
%der Pauw. El valor 0 indica que se cumple

%ecuacion de van de pauw
%exp(-pi*RA/RS)+exp(-pi*RB/RS)=1
%funcion fvanderpauw
%F(RB,RB,RS)=exp(-pi*RA/RS)+exp(-pi*RB/RS)-1
%Datos de entrada RA,RB,RS
%Dato de salida: el cero indica que se cumple la ecuación de van der Pauw

dif=(exp(-pi*RA/RS)+exp(-pi*RB/RS)-1)^2;
end