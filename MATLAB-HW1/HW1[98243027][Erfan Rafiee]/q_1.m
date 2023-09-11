clc;clear al;
%%%%%%%%%%P1
n = 0:9;
x = ones(1,length(n));
figure
stem(n,x,'.')
axis([-5,20,-2,2])
xlabel('n');ylabel('x(n)')
n = 0:99;
h = 0.9.^n ;
figure
stem(n,h,'.')
axis([-5,102,-2,2])
xlabel('n');ylabel('h(n)')
y = zeros(1,100);
y(1:9) = 10*(1-(0.9).^[0:8]);
y(10:end) = 10*(0.9).^[1:91]*(1-0.9^10);
figure
stem(n,y,'.')
axis([-5,102,-2,10])
xlabel('n');ylabel('y(n)')
