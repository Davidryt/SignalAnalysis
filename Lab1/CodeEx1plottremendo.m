subplot(3,1,1)
generate_sinuisoid(0,2,0.1,pi,0)
subplot(3,1,2)
generate_sinuisoid(0,2,0.1,2*pi,0)
subplot(3,1,3)
generate_sinuisoid(0,2,0.1,4*pi,0)

%*----------------------------------
subplot(3,1,1)
generate_exp(0,2,0.1,1/2);
subplot(3,1,2)
generate_exp(0,2,0.1,1/4);
subplot(3,1,3)
generate_exp(0,2,0.1,exp(i*pi));
%%Warning: Imaginary parts of complex X and/or Y arguments ignored 

%----------------------------------

N = -50:1:50;
pulse = [zeros(1,40) ones(1,21) zeros(1,40)];
%or lenght de N2
stem(N,pulse)

deltas= [zeros(1,101)];
deltas(30)=-1;
deltas(71)=1;
stem(N,deltas)

y=conv(deltas,pulse);

stem(N,y(51:end-50))

%-----------------------------------

