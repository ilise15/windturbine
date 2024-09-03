%% Definisanje konstanti
J = 3410432;
rho = 1.225;
R = 40;
A1 = R^2*pi; % poprecni presek propelera
V = 13;
C1 = 0.5;
C2 = 116;
C3 = 0.4;
C4 = 0;
C5 = 5;
C6 = 23;
K = 160661.6;
param = [C1,C2,C3,C4,C5,C6,J,rho,A1,V,K];
%% Definisanje formuli
f = @(teta, omega, param)((0.5*rho*A1*Cp(teta, omega, param)*V^3)./omega - K*omega.^2);
ww = 0.001:0.0001:0.1;
hold on;
for teta = 13:0.5:16
    plot(ww,f(teta, ww, param), 'LineWidth',2)
    
end
legend('13','13.5','14','14.5','15'); %Radna tacka je u omega0,teta0;
hold off;
box on;
grid on;
hold on;

%% Omega0
teta0 = 15;
options = optimset('TolX', 1e-25); % Stavimo veliku preciznost
pocetak = 0.03239; % Ovu vrednost smo dobili zumiranjem grafika
omega0 = fzero(@(omega) f(teta0, omega, param), pocetak, options);

fprintf('Radna tacka: (teta0, omega0) =  (%.1f, %.15f)\n',teta0, omega0);


%% Provera za radnu tacku:
%  teta0 = fzero(@(teta) f(teta, omega0, param), 13, options);