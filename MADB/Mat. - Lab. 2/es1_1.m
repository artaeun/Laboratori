clc;
close all;
clear all;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Obiettivi
%
% 1. Definire parametri della sinusoide
% 2. definire intervallo di osservazione Tw
% 3. definire asse dei tempi t;
% 4. creare segnale sinusoidale continuo
% 5. definire frequenza di campionamento
% 6. calcolare l'asse dei tempi discrettizzato 
% 7. confrontare i due segnali sinusoidali
% 8. costruire il segnale quantizzato
% 9. determinare RMS
%10. osservare variazioni RMS al variare della frequenzaù
%di campionamento
%11. aggiugnere rumore al segnale
%12. confrontare segnale rumoroso con quello non rumoroso
%13. calcolare SNR


% 1. Definire parametri della sinusoide
V_0=1;
F_0=1000; % anche F_s?
Phi_0=pi/6;

F_S=F_0*5;

% 2. definire intervallo di osservazione Tw
fattoreFinestra=7.5;
T_W=1/F_S * fattoreFinestra;%1/F_s * 7.5; % tra 5 e 10 ms
F_W=1/T_W;

% 3. definire asse dei tempi t;
N = 1000; %punti per il campionamento
t=linspace(0,T_W, N);

% 4. creare segnale sinusoidale continuo
V= V_0 * sin(2*pi*F_0*t + Phi_0);

T_s= 1/F_S;

% 5. definire frequenza di campionamento
N_sample=round(T_W / T_s);
t_sample=[0:1:(N_sample - 1)]* T_s;


% 6. calcolare l'asse dei tempi discrettizzato 
V_sample=V_0 * sin(2*pi*F_0*t_sample + Phi_0)

% 7. confrontare i due segnali sinusoidali

figure(1);
plot(t,V);
xlabel("secondi");
ylabel("Volt");

hold on;
grid on;
plot(t_sample,V_sample, '*r');


% 8. costruire il segnale quantizzato
N_bit=4; %bit

V_fs=V_0;
N_lev=2^N_bit;
Delta_q=(2*V_fs)/N_lev; %o (2*V_fs)/N_lev-1

q=round(V/Delta_q);%segnale quantizzato

Vq=q*Delta_q;

plot(t,Vq,'m');

% 9. determinare RMS
v2=V .^ 2;
V_rms=sqrt(sum(v2)/N);
V_rms_teorico=(1/sqrt(2));
differenzaRMS=abs(V_rms- V_rms_teorico);
txt=sprintf('Differenza tra RMS teorico e quello ottenuto = %.7f .', differenzaRMS);

text( t(1,length(t)*3/4) ,V_rms+0.1,txt,'HorizontalAlignment','right');
V_rms=V_rms*ones(length(t),1);

plot(t, V_rms);
plot(t, V_rms_teorico);



%10. osservare variazioni RMS al variare della frequenza
%di campionamento




%11. aggiungere rumore al segnale
SNR=1000;
P_noise=(V_rms(1,1)^2)/SNR;
noise=sqrt(P_noise) * randn(1, length(t));
V_noise=V+noise;
plot(t,V_noise);
legend("Segnale V", "Campionamento", "Segnale quantizzato", "V_{RMS}", "V_{RMS} teorico","Segnale con rumore");


%12. confrontare segnale rumoroso con quello non rumoroso
%13. calcolare SNR