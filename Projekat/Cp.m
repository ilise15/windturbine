function Cp = Cp(teta, omega, C)
Cp = C(1)*(C(2)*L(teta,omega) - C(3)*teta-C(5)).*exp(-C(6)*L(teta,omega));
end

