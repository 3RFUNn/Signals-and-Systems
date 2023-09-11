function [X] = FT(x,n)
w = -pi:0.001:pi;
    
    X = zeros(1,length(w));
    for i = 1:length(w);
    X(i) = exp(-1i*w(i)*n)  * x.';
    end
    
end