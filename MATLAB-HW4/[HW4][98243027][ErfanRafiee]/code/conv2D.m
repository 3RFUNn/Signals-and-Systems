function [y,p] = conv2D(x,h,padding,stride)

h = rot90(h,2);
x = double(x);
[Mh, Nh ,ch] = size(h);
[Mx, Nx ,chi] = size(x);
if strcmp(padding,'valid')
    sizey = floor(([Mx, Nx]-[Mh, Nh])/stride+1);
    y = zeros(sizey(1),sizey(2), ch);
    p=0;
elseif strcmp(padding,'same')
    sizey = [Mx, Nx];
    y = zeros(sizey(1),sizey(2), ch);
    p = ([Mx, Nx]*(stride-1)+[Mh, Nh]-stride)/2;
    p=ceil(p);
    x = [zeros(Mx+2*p(1),p(1),chi),[zeros(p(2),Nx,chi)...
        ;x;zeros(p(2),Nx,chi)],zeros(Mx+2*p(1),p(1),chi)];
end



for k1 = 1:sizey(1)
    for k2 = 1:sizey(2)
        for k3 = 1:ch
            x_temp = x((k1-1)*stride+(1:Mh),(k2-1)*stride+(1:Nh),:);
            h_temp = repmat(h(:,:,k3),1,1,chi);
            y(k1,k2,k3) = sum(x_temp.*h_temp,'all');
        end
    end
end