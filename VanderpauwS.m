function [S]=VanderpauwS(RA,RB,esp)
%Permita calcular la conductividad de acuerdo al método de Van der Pauw
%ingresando los valores promedios de las 8 mediciones.
%Datos de entrada RA, RB en Ohm y el espedsor en m (esp).

x0=pi*(RA+RB)/(log(2)*2);
x=fminsearch(@(x)fvanderpauw(RA,RB,x),[x0]);
%x0 es el punto inicial.

Rs=x;
%Rs es la resistencia superficial.

RO = Rs*esp;

Cond = 1/RO;

S=Cond;
end