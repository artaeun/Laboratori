clc;
close all;
clear all;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 1. Definire parametri della sinusoide
V_0 = 3;
F_0 = 30;
Phi_0=pi/6;

N=1000;

T_W = 5*(1/F_0);

% 2. definire intervallo di osservazione Tw
% 3. definire asse dei tempi t;
% 4. creare segnale sinusoidale continuo
[V,t]=creaSinusoide(V_0,F_0,Phi_0,N, T_W);
plot(t,V)
grid on;
grid("minor");
hold on;

% 5. definire frequenza di campionamento
% 6. calcolare l'asse dei tempi discrettizzato
[V_sample, t_sample]=creaSegnaleCampionato(V_0,F_0,Phi_0,T_W,30);

plot(t_sample,V_sample);

% 7. confrontare i due segnali sinusoidali
% 8. costruire il segnale quantizzato
% 9. determinare RMS
%10. osservare variazioni RMS al variare della frequenzaù
%di campionamento
%11. aggiungere rumore al segnale
%12. confrontare segnale rumoroso con quello non rumoroso
%13. calcolare SNR
