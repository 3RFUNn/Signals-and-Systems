%%%%%%%%%%%%%%P4
figure
t = -10:0.1:10;
x_t = imag(2-exp(1-1i*pi*t))
w = -10*pi:0.1:10*pi;
X_w = 1i.*w./(1+1.*w);
subplot(2,1,1)
stem(t,abs(x_t),'.')
title('Stem command')
xlabel('t');ylabel('|x(t)|')
subplot(2,1,2)
stem(t,phase(x_t),'.')
xlabel('t');ylabel('arg(x(t))')
axis([-12,12,-1,3])

figure
subplot(2,1,1)
plot(t,abs(x_t))
title('Plot command')
xlabel('t');ylabel('|x(t)|')
subplot(2,1,2)
plot(t,phase(x_t))
xlabel('t');ylabel('arg(x(t))')
axis([-12,12,-1,3])