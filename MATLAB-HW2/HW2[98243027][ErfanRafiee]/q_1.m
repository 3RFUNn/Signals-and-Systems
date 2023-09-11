%%%%%%q1
[h t ] =impz([0.9 -0.45 0.35 0.002],[1 0.71 -0.46 -0.62]);
plot(t(1:40),h(1:40))
title('Impulse Response')
xlabel('n');ylabel('h(n)')