%%
n1 = 0:4;
x1 = [0 1 1 1 0];
X1 = FT(x1,n1);
w = -pi:0.001:pi;
figure
subplot(2,1,1)
title('X_1(w)')
plot(w,abs(X1))
xlabel('w')
ylabel('|X_1(w)|')
subplot(2,1,2)
plot(w,phase(X1))
xlabel('w')
ylabel('<X_1(w)')
%%
n2 = 1:100;
x2 = sin(n2)./(pi*n2) .* sin(2*n2)./(pi*n2) ;
X2 = FT(x2,n2);
w = -pi:0.001:pi;
figure
subplot(2,1,1)
title('X_2(w)')
plot(w,abs(X2))
xlabel('w')
ylabel('|X_2(w)|')
subplot(2,1,2)
plot(w,phase(X2))
xlabel('w')
ylabel('<X_2(w)')
%%
n3 = 1:100;
x3 = sin(100*n3).*(-1).^n3 ;
X3 = FT(x3,n3);
w = -pi:0.001:pi;
figure
subplot(2,1,1)
title('X_3(w)')
plot(w,abs(X3))
xlabel('w')
ylabel('|X_3(w)|')
subplot(2,1,2)
plot(w,phase(X3))
xlabel('w')
ylabel('<X_3(w)')