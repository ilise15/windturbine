function Cp_teta = Cp_teta(teta,omega, C)
Cp_teta = C(1)*exp(-C(6)*L(teta,omega)).*(C(2)*L_teta(teta,omega) - C(3) - C(6)*L_teta(teta,omega).*(C(2)*L(teta,omega)-C(3)*teta-C(5)));
end