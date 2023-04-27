n = 0:100;

Fs1 = 5e3;

Fo_05 = 0.5e3;
Fo_2 = 2e3;
Fo_3 = 3e3;
Fo_4_5 = 4.5e3;

t= n./Fs1;
x_05 = sin(2*pi*Fo_05.*t);
x_2 = sin(2*pi*Fo_2.*t);
x_3 = sin(2*pi*Fo_3.*t);
x_4_5 = sin(2*pi*Fo_4_5.*t);

figure('Name','problem 3 part 1');
subplot(4,1,1);
stem(t,x_05);
xlabel('n');
ylabel('x[n]');
title('F_0 = 0.5kHz');

subplot(4,1,2);
stem(t,x_2);
xlabel('n');
ylabel('x[n]');
title('F_0 = 2kHz');

subplot(4,1,3);
stem(t,x_3);
xlabel('n');
ylabel('x[n]');
title('F_0 = 3kHz');

subplot(4,1,4);
stem(t,x_4_5);
xlabel('t');
ylabel('x[t]');
title('F_0 = 4.5kHz');
%% Part 2
Fs2 = 50e3;

Fo = 2e3;

t1 = n./Fs2;
t2 = t1(2:2:100);

x = sin(2*pi*Fo.*t1);
y = x(2:2:100);

figure('Name','problem 3 part 2');
subplot(2, 1, 1);
stem(t1,x);
xlabel('n');
ylabel('x[n]');
title('x[n]');

subplot(2, 1, 2);
stem(t2,y);
xlabel('n');
ylabel('y[n]');
title('y[n]');