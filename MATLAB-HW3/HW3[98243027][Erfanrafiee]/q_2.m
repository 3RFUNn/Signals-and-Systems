k_max=[5 15 30];
k = [0:max(k_max)];
ck = CK(k);
a_ck = abs(ck);
ph_ck = phase(ck);
t = -6:0.001:6;

X_t = zeros(3,length(t));
T = 5;%%period of x
omega0 = 2*pi/5;
for m = 1:3;
    x_t = zeros(1,length(t));
    for n= 0:k_max(m)
        x_t = x_t + 2*a_ck(n+1)*cos(omega0*n*t+ph_ck(n+1));
    end
    X_t(m,:)=x_t;
    
end
plot(t,X_t)
xlabel('t')
ylabel('x(t)')
title('fourier series of x(t)')
legend('k = 5 ','k = 15','k = 30')
