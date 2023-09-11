%%%%%%%%%%%%%P3
x1 = 1./(2.^(-[-2:1]+1));
x2 = zeros(1,4);
x2(1) = sin(2*1)+(-1)^1;
for i =2:4
    x2(i) = x2(i-1)+sin(2*i)+(-1)^i;
end
figure
conv(x1,x2)
Convolution(x1,x2)
subplot(2,1,1)
stem([-1:5],Convolution(x1,x2))
xlabel('n');ylabel('Output')
title('My Function')
subplot(2,1,2)
stem([-1:5],conv(x1,x2))
title('Matlab Function')
xlabel('n');ylabel('Output')
