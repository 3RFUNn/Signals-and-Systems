T = 4;
t = -T/2:0.001:T/2;

x_t = (abs(t)-1);
plot(t,x_t)
ak = FS(x_t,t,T);
a_ak = abs(ak);
ph_ak = phase(ak);
omega0 = 2*pi/T;
x_tt =zeros(1,length(t));
for n= 11:21
        x_tt = x_tt + 2*a_ak(n)*cos(omega0*n*t/16+ph_ak(n));
end
figure
plot(t,x_tt)
xlabel('t')
ylabel('x(t)')
title('fourier series of x(t)')