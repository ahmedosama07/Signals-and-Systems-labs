Ts = 2;
n = -20 : 20;
t = linspace(-40,40);

Xn = cos((Ts.*n)./3);
Xt = cos((1.*t)./3);

Yn = cos((4 .* Ts .*pi.*n)./38);
Yt = cos((4.*pi.*t)./38);

figure('Name','problem 4');
subplot(4,1,1);
stem(n,Xn);
xlabel('n');
ylabel('x[n]');
title('x[n]');

subplot(4,1,2);
plot(t,Xt);
xlabel('t');
ylabel('x[t]');
title('x[t]');

subplot(4,1,3);
stem(n,Yn);
xlabel('n');
ylabel('y[n]');
title('y[n]');

subplot(4,1,4);
plot(t,Yt);
xlabel('t');
ylabel('y[t]');
title('y[t]');