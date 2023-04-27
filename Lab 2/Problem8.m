n = -10 : 10;

x = exp((-0.1+0.3i).*n);

subplot(2,2,1);
stem(n, abs(x));
xlabel('n');
ylabel('x[n]');
title('Magnitude');

subplot(2,2,2);
stem(n, angle(x));
xlabel('n');
ylabel('x[n]');
title('Phase');

subplot(2,2,3);
stem(n, real(x));
xlabel('n');
ylabel('x[n]');
title('Real Part');

subplot(2,2,4);
stem(n, imag(x));
xlabel('n');
ylabel('x[n]');
title('Imaginary Part');