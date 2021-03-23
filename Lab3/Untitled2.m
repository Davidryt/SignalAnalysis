%% -------- exercise one

timex=linspace(-1,1,1001);
n=1001;
x = cos(2*pi*2*timex);
subplot(2,2,1)
plot(timex, x)
[y,timey]=conv_cd(x,timex,0.1);
subplot(2,2,2)
stem(timey,y)

%% *------- EJERCICIO DUE
timec=linspace(-2,2,1001);
xc = cos(2*pi*2*timec);
w = linspace(-6*pi,6*pi,1001);
for k=1:length(w)
    Xc(k) = sum(xc.*exp(-1i*timec*w(k))*0.001); 
end
[xd, timed]= conv_cd(xc, timec, 0.1);
w2 = linspace(-6*pi,6*pi,1001);
for k=1:length(w2)
    Xd(k) = sum(xd.*exp(-1i*timed*w2(k))*0.1); 
end
subplot(2,2,3)
plot(w, real(Xc));
subplot(2,2,4)
plot(w2, real(Xd));