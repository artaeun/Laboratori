clc;
clear all;

i1=[0:1:100];
i2=linspace(501,1000, 500);
i3=[i1,i2];
i4=[0.0:0.001:1.0];
i5=logspace(0,2,10)

x=[0:1:9];
figure(1);
plot(x,i5);

i6=logspace(0,3,100);
x2=[0:1:99];
figure(2);
plot(x2,i6);
