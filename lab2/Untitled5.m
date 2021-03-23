%ejercicio TRÉ

[n_ext,x_ext] = repeat_pulse(2, 2);
n_points = 200;
w = linspace(-pi,pi,n_points);
for k = 1:length(w)
   X_ext(k) = sum(x_ext.*exp(-1i*n_ext*w(k))); 
end
plot(w,real(X_ext)); 
xlabel('w'); 
ylabel( 'X_{pulse}(e^{jw})' );
title( 'Frequency Domain' )