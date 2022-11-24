clc;
clear all;
%close all;

x1=[0.0:0.01:1];
y1=sin(x1.*x1);

x2=[0.0: 0.01: 10.0];
y2=sin(x2.*x2);

figure(1);


plot(x1,y1);
title('Grafico y=sin(x^2)');
xlabel('asse delle x');
ylabel('asse delle y');
xlim([0 10]);
ylim([-1 1]);
grid("on");
hold on

figure(2);
plot(x2,y2);
title('Grafico y=sin(x^2)');
xlabel('asse delle x');
ylabel('asse delle y');
xlim([0 10]);
ylim([-1 1]);
grid("on");
hold on