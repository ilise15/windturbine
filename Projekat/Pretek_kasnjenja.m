s = tf('s');

Kp = 4;
Ki = 0.009;

W = (s*Kp*B + Ki*B)/(s^2+s*(-A));

nyquist(W);