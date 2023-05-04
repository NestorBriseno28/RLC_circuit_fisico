function [dx, Vc]= RLC(t,x)
% definicion de los parametros %
R=103;
L=6e-3;
C=1e-7;
freq= 500;

U=4.8;
U= pwm_(t,U);

% ----------------------------------------%

dx=zeros(2,1);

% definicion de las matrices %

% ----------------------------------------%

% definicion de la dinamica del sistema respecto la corriente I%
dx(1) = x(2);
dx(2) = ( U-(R*x(2))-((1/C)*x(1)) )*(1/(L));
% ----------------------------------------%
end

function sq_wav = pwm_(t,u)
freq=503;
offset=.5;
amp=.5;
%t=0:0.00001:0.01;%100 seconds
sq_wav=offset+amp*square(2*pi*freq.*t);
sq_wav=sq_wav*u;
%plot(t,sq_wav)
end