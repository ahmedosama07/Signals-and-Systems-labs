n1 = 0:25;
n2 = -5:10;
n3 = 0:20;
n4 = 0:20;

x1 = zeros(size(n1));
for m = 0 : 10
    x1 = x1 + (m + 1) .* (dirac(n1 - 2*m) - dirac(n1 - 2*m - 1));
end

x4_period = [1, 2, 3, 2];
x4 = [repmat(x4_period, 1, 5) 1];

figure('Name','problem 6');
subplot(4,1,1);
stem(n,x);

subplot(4,1,2);
stem(n,x1);

subplot(4,1,3);
stem(n,x2);

subplot(4,1,4);
stem(n,x3);