function Cp_omega = Cp_omega(teta,omega,C)
Cp_omega = C(1)*exp(-C(6)*L(teta,omega))*L_omega(teta, omega).*(C(2) - C(6)*(C(2)*L(teta,omega) + C(3).*teta + C(5)));
end

