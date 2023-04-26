n = zeros(1,100);
for i=1:1:100
    n(i)=i-1;
end

Fs = 5000;

Fo_05 = 0.5*1000;
Fo_2 = 2*1000;
Fo_3 = 3*1000;
Fo_45 = 4.5*1000;

t= n./Fs;
x_05 = sin(2*pi*Fo_05.*t);
x_2 = sin(2*pi*Fo_2.*t);
x_3 = sin(2*pi*Fo_3.*t);
x_45 = sin(2*pi*Fo_45.*t);

subplot(4,1,1);
stem(t,x_05);
subplot(4,1,2);
stem(t,x_2);
subplot(4,1,3);
stem(t,x_3);
subplot(4,1,4);
stem(t,x_45);

