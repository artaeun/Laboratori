function [V_sample, t_sample]=creaSegnaleCampionato(V_0,F_0, Phi_0,T_W, F_camp)

T_s=1/F_0;
N_sample=round(T_W/T_s);

t_sample= [0:1:(N_sample-1)] * T_s;

V_sample=V_0*sin(2*pi*F_0*t_sample + Phi_0);