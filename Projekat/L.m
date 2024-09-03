function L = L(teta,omega)
L = 1./(lambda(omega) + 0.08*teta) - 0.035/(1+teta^3);
end

