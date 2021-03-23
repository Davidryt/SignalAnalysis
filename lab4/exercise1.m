%%    --------- 2.1

[x1, fs1] = audioread('audio1.wav');
voice = resample(x1,fs1,16000);
%soundsc(x1,fs1);
%soundsc(voice,16000);
x13=fft(voice,4096);
x133=fftshift(x13);
t33 = linspace(-16000/2, 16000/2, 4096);
% subplot(2,1,1)
% plot(voice);
% subplot(2,1,2);
% plot(t33, real(x133));

%% --------2.2

[x1, fs1] = audioread('audio2.wav');
piano = resample(x1,fs1,16000);
%soundsc(x1,fs1);
%soundsc(piano,16000);
x3=fft(piano,4096);
x33=fftshift(x3);

%% ---------2.3

t=(1:length(piano))/16000; 
f0=16000/4;
cosine=cos(2*pi*f0*t);
piano_shifted= piano.*cosine'; 

pianoshiftefft=fft(piano_shifted,4096);
pianoshiftefft2=fftshift(pianoshiftefft);

%% ---------2.4

mix = piano_shifted + voice;

mix2=fft(mix,4096);
mix3=fftshift(mix);
subplot(2,1,1)
plot(t, 10*log10(real(mix)));

subplot(2,1,2)
plot(t,10*log10(real(mix3)));
%soundsc(mix);


%% ------------Section 3.1/3.2

B = fir1(1024, 0.2, 'low');
Bfft = fft(B);
Bffts = fftshift(Bfft);
plot(10*log10(abs(B)));
Y = filter(B, 1, mix);
soundsc(Y);