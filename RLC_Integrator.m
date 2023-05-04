clear all; clc;

[t,x]=ode45(@RLC, 0:1/500e2:0.001, [0 0]);

%Definicion de la dinamica del voltaje del capacitor,
%donde el vector x(:,1) es la corriente del capacitor
C = 1e-7;
Vc = (1/C).*x(:,1); %Por definicion del voltaje del capacitor

%Graficamos

figure(1)

plot(t,Vc); 
grid on
title("Voltaje de  Capacitor");
xlabel("tiempo");
ylabel("V");

figure(2)

plot(t,x(:,2),"Color","#EDB120"); 
grid on
title("Corriente");
xlabel("tiempo");
ylabel("I");

figure(3)

plot(t,[Vc,x(:,2)]); hold on
grid on
title("Respuesta del sistema");
plot(t,x(:,2));