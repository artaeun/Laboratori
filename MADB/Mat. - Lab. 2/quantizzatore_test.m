clc;
clear all;
close all;

V_fs=2;



t=linspace(0,1,30);
x_test=t*V_fs;


N_bit=4;
N_lev=2^N_bit;
Delta_q =(2*V_fs)/N_lev;

q=round(x_test/Delta_q);
x_q=q*Delta_q;



plot(t,x_test,'*r');
hold on;

plot(t,x_q,'b');