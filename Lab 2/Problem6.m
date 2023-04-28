n1 = 0:25;
n2 = -5:10;
n3 = 0:20;
n4 = 0:20;

x1 = zeros(size(n1));
for m = 0 : 10
    x1 = x1 + (m + 1) .* (delta(n1 - 2*m) - delta(n1 - 2*m - 1));
    x1(x1==Inf)=m+1;
    x1(x1==-Inf)=-(m+1);
end

x2 = (n2 .^ 2) .* (unit(n2 + 5) - unit(n2 - 6)) + 10 * delta(n2) + 20 * (0.5 .^ n2) .* (unit(n2 - 4) - unit(n2 - 10));

x3 = (0.9 .^ n3) .* cos(0.2 * pi .* n3 + pi / 3);

x4_period = [1, 2, 3, 2];
x4 = [repmat(x4_period, 1, 5) 1];

figure('Name','problem 6');
subplot(4,1,1);
stem(n1,x1);
xlabel('n');
ylabel('x1[n]');
title('x1[n]');

subplot(4,1,2);
stem(n2,x2);
xlabel('n');
ylabel('x2[n]');
title('x2[n]');

subplot(4,1,3);
stem(n3,x3);
xlabel('n');
ylabel('x3[n]');
title('x3[n]');

subplot(4,1,4);
stem(n4,x4);
xlabel('n');
ylabel('x4[n]');
title('x4[n]');

