N1 = 0:1:20;
x1= 3*sin(pi*N1*(1/7))+ 1i*4*cos(pi*N1*(1/7));
N2 = 0:1:50;
x2= ((1.1).^N2).*cos((pi*N2*(1/11))+(pi/4));

real_x1=real(x1);
imag_x1= imag(x1);
subplot(2,2,1)
plot(N1,real_x1);
subplot(2,2,2)
plot(N1,imag_x1);
subplot(2,2,3)
plot(abs(x1));
subplot(2,2,4)
plot(angle(x1));

plot(N2, x2);


