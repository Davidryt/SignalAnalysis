function [xd, tsamp] = conv_cd(xc, t, Ts) 
T = t(end) - t(1); 
Ns = floor(T/Ts) + 1; 
xd = [xc(1) zeros(1, Ns-1)]; 
tsamp = [t(1) zeros(1, Ns-1)]; 
for n = 1:Ns-1    
    [delta, ind] = min(abs(t-t(1)-n*Ts));     
    xd(n+1) = xc(ind(1));     
    tsamp(n+1) = t(ind(1)); 
end     