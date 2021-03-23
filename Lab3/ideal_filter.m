
function hi = ideal_filter(t, Ts) 
 hi = Ts*sin(pi*t/Ts)./(pi*t); ind = find(t==0); hi(ind) = 1;