function fct=Ck(k)

fct = zeros(size(k));
for m=1:length(k)
    if ~(mod(k(m),2) == 0)
        fct(m)=1./(j*k(m)*pi).*(cos(2*k(m)*pi/3)-cos(k(m)*pi/3));
    end
end


return;