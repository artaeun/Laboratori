function  [V,t]=creaSinusoide(V_0, F_0, Phi_0, N, T_W)



t=linspace(0, T_W, N);
V= V_0 * sin(2*pi*F_0*t + Phi_0);