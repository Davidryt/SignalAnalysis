% ------ EJERCICIO DUUUE

N1=5;
n_points = 200;
w = linspace(0,10,n_points); 
Xw = sin(w*(N1+0.5))./sin(w/2); 

plot(w,Xw);
hold on;
Xwi = imag(Xw);
plot(w,Xwi);
xlabel('w'), ylabel('X(jw)');
hold off;