timex=linspace(-2,2,4001);
n=1001;
x = cos(2*pi*2*timex);
%%subplot(2,2,1)
%%plot(timex, x)
[y,timey]=conv_cd(x,timex,0.1);
[y2,timey2]=conv_cd(x,timex,0.01);
subplot(2,2,1)
stem(timey,y)
subplot(2,2,2)
stem(timey2,y2)


for i=1:length(timex)
    xr(i)=sum(y.* ideal_filter(timex(i)-timey, 0.1));
    xr2(i)=sum(y2.* ideal_filter(timex(i)-timey2, 0.01));
end 
subplot(2,2,3)
plot(timex,xr)
hold on
stem(timey,y)
subplot(2,2,4)
plot(timex,xr2)
hold on
stem(timey2,y2)