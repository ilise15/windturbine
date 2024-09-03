%% Sredjene formule
omega_t = (((0.5*A1*rho*Cp_omega(teta0, omega0,param)*V^3*omega0 - 0.5*A1*rho*Cp(teta0,omega0,param)*V^3))./omega0^2 -2*omega0*K)./J;
teta_t = (0.5*A1*rho*Cp_teta(teta0,omega0,param)*V^3/omega0)/J;
A = omega_t;
B = teta_t;
C = 1;
D = 0;
%% Provera Linearnosti
ww=0:0.0001:0.1;
lmod = A.*(ww-omega0)+B.*(teta0-teta0);
hold on;
plot(ww,nelinearni_m(teta0,ww,param));
plot(ww,lmod);
legend('Nelinearan model', 'Linearan model');
hold off
box on
grid on
hold on