function nelinearni_m = nelinearni_m(teta ,omega, param)
nelinearni_m =((0.5*param(8)*param(9)*Cp(teta, omega, param)*param(10)^3)./omega - param(11)*omega.^2)./param(7);
end