x = [1,-2,4,6,-5,8,10];
n = -4:2;

x1 = 3 .* [x(3:end) zeros(1,2)] + [zeros(1,4) x(1:3)] + 2 .* x;
x2 = [x(5:end) zeros(1,4)] .* [zeros(1,1) x(1:6)] + [zeros(1,2) x(end:-1:3)];

x3 = zeros(1, length(x));

for k = 1 : 1 : 5
    x3 = x3 + n .* [zeros(1,k) x(1:length(x) - k)];
end
figure('Name','problem 5');
subplot(4,1,1);
stem(n,x);

subplot(4,1,2);
stem(n,x1);

subplot(4,1,3);
stem(n,x2);

subplot(4,1,4);
stem(n,x3);
