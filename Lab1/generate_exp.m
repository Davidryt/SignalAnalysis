function[x, ref]= generate_exp(n0,n1,step,b)
ref = n0:step:n1 ;
x = b.^ref;
plot(ref,x);
end