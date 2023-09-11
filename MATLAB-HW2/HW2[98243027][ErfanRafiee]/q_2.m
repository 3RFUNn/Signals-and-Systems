%%%%%%%q2
clc;clear all;
n = 1:21;
x = [5*ones(1,20) 0];
y(1)= x(1);
for i = 2:21
    
    y(i) = x(i)-x(i-1)
end
figure
stem(n,y)
n = 1:101;
x = sin(n.*pi/5).*[ones(1,100) 0];
y(1)= x(1);

for i = 2:101
    
    y(i) = x(i)-x(i-1)
end
figure
stem(n,y)