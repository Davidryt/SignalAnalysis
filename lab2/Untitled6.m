[original_voice,f] = audioread('speech.wav');
%sound(original_voice,f);
expanded_voice = zeros(1,2*length(original_voice)); 
expanded_voice (1:2:end) = original_voice;
sound(expanded_voice,f); 

n_points = 200;
w = linspace(-pi,pi,n_points);
n= 1:length(original_voice);
for k = 1:length(w)
   X_ext(k) = sum(original_voice.*exp(-1i*n*w(k))); 
end
plot(w,real(X_ext)); 
xlabel('w'); 
ylabel( 'X_{pulse}(e^{jw})' );
title( 'Frequency Domain' )