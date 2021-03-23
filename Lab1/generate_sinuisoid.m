function[y, ref]= generate_sinuisoid(n0,n1,step,w0,phi)
ref = n0:step:n1 ;
y = sin((w0*ref)+phi);
plot(ref,y)

end