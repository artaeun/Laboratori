clc
clear all


figure(1);

x=[0.0:0.001:1.0];
y1=2.^x;
y2=4.^x;

plot(x,y1,x,y2)
legend("2^x","4^x");
xlabel("x");
ylabel("y");

figure(2);

x=[0.0:0.01:10];

y1=3.^x;
y2=6.^x;
y3=9.^x;

plot(x,y1,x,y2,x,y3)
legend("3^x","6^x","9^x");
xlabel("x");
ylabel("y");
