%----------EJERICIO ONE

n_points = 100;
a=2;
t = linspace(0,10,n_points); 
y = exp(-a*t);
plot(t,y);
xlabel('t'), 
ylabel('y(t)') 


n_points = 200;
w = linspace(-10,10,n_points); 
Xw = 1./(a+i*w); 

plot(w,Xw);
hold on;
Xwi = imag(Xw);
plot(w,Xwi);
xlabel('w'), ylabel('X(jw)');