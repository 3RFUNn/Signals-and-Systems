function [ak] = FS(x,t,T)
k = -10:10;
   
  
    ak = zeros(1,length(k));
    for i = 1:length(k)
    ak(i) = 1/T*exp(-1i*k(i)*2*pi/T*t)  * x.'*0.001;
    end
    
end