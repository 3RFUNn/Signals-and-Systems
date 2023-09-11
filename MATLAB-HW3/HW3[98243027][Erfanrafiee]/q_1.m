k = [-100: 100];
ck = CK(k)
stem(k,abs(ck),'.')
xlabel('k')
ylabel('|C_k|')
title('Magnitude of Fourier series')
figure
stem(k,phase(ck)/pi*180,'.')
xlabel('k')
ylabel('<C_k ')
title('Phase of Fourier series')