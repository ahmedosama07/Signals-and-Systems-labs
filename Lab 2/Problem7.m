n = 0 : 50;
w = randn(size(n));
sigma = [0.01 0.2 2];

x1 = cos(0.04 * pi .* n) + sigma(1) * w;
x2 = cos(0.04 * pi .* n) + sigma(2) * w;
x3 = cos(0.04 * pi .* n) + sigma(3) * w;

x = [x1; x2; x3];

subplot(3,1,1);
stem(n, x(1, :));
xlabel('n');
ylabel('x[n]');
title('Random Sequence for \sigma = 0.01');

subplot(3,1,2);
stem(n, x(2, :));
xlabel('n');
ylabel('x[n]');
title('Random Sequence for \sigma = 0.2');

subplot(3,1,3);
stem(n, x(3, :));
xlabel('n');
ylabel('x[n]');
title('Random Sequence for \sigma = 2');