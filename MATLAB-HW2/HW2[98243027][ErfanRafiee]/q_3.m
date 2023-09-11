%%%q3
[h t] = impz([1],[1 -1 0.9]);
plot([-20:100],[zeros(1,21) h(1:100)'])
title('Impulse Response')
xlabel('n');ylabel('h(n)')
s(1)= h(1);
for i = 2:120
    s(i)= h(i)+s(i-1)
end
figure
plot(-20:100,[zeros(1,21) h(1:100)'])
title('?Step Response')
xlabel('n');ylabel('h(n)')