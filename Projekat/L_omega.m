function L_omega = L_omega(teta,omega)
R = 40;
V = 13;
lambda_omega = R/V;
L_omega = -lambda_omega./(lambda(omega)+0.08*teta).^2;
end

