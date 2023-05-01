%% problem 1
coeffY = [1];
coeffX = [18 8];
f = 0:14;
h = tf(coeffX, coeffY, 1/100);
impulse = filter(coeffX, coeffY, [1 zeros(1, 14)]);
step = filter(coeffX, coeffY, [ones(1, 15)]);

figure('Name','problem 1');
subplot(2,1,1);
stem(f,impulse);
title('impulse response');

subplot(2,1,2);
stem(f,step);
title('srep response');
%% problem 2
fs = 200;
t = linspace(-fs/2,fs/2, 4*fs);
y = 0.5 .* cos(40.*pi.*t) + 0.3.*sin(60.*pi.*t)+0.3.*sin(80.*pi.*t);
yf=fftshift(fft(y));
ymag = abs(yf);
yphase = angle(yf);

figure('Name','problem 2');
subplot(2,1,1);
stem(t,ymag);
title('magnitude');

subplot(2,1,2);
stem(t,yphase);
title('phase');

yprime = real(ifft(ifftshift(yf)));
figure('Name','problem 2 - 2');
subplot(2,1,1);
plot(t,y);
title('original');

subplot(2,1,2);
plot(t,yprime);
title('after conversion');
%% problem 3
x1 = [1 2 0 1];
x2 = [2 2 1 1];

X1 = fft([x1 zeros(1,3)]);
X2 = fft([x2 zeros(1,3)]);
Y = X1.*X2;
y = real(ifft(Y));

h = conv(x1, x2);

figure('Name','problem 3');
subplot(2,1,1);
stem(y);
title('fft');

subplot(2,1,2);
stem(h);
title('conv');
%% problem 4
fs = 20e3;
Ns = 100000;
f = linspace(-fs/2, fs/2, Ns);
x_f = sinc(f/5000).*sinc(f/5000);
signal = x_f;
%plot(f,x_f);
signal([1:25000 (length(signal)-25000)+1: length(signal)])=0;

figure('Name','problem 4');
subplot(2,1,1);
plot(x_f);
title('signal');

subplot(2,1,2);
plot(signal);
title('filter');