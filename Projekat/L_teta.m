function L_teta = L_teta(teta,omega)
L_teta =(-0.08*teta./(lambda(omega)+0.08*teta).^2) + 0.035*3*teta^2/((1+teta^3)^2); 
end

