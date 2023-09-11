%%%%%%%%%%%%%%P2
subplot(3,1,1)
n = -4:3;
x = [1 -2 -2 -2 -1 -2 -2 -2 ]
stem(n,x)
ylabel('x(n)')
subplot(3,1,2)
y = [1 -2 0 -1 1 0 -2 -2 ]
stem(n,y)
ylabel('y(n)')
subplot(3,1,3)
z = (-1).^n .*cos(n*pi/2).*x;
stem(n,z)
ylabel('z(n)')
axis([-5,5,-4,4])
xlabel('n')
