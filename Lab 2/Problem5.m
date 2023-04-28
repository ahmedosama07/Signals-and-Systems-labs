x = [1,-2,4,6,-5,8,10];
n = -8:7;
L = 4;
R = 5;
X = [zeros(1, L) x zeros(1, R)];
x1 = 3 .* [zeros(1, L-2) x zeros(1,R+2)] + [zeros(1,L+4) x zeros(1,R-4)] + 2 .* X;
x2 = [zeros(1, L-4) x zeros(1,R+4)] .* [zeros(1,L+1) x zeros(1, R-1)] + [zeros(1,R+1+2) x(end:-1:1) zeros(1,L-1-2)] .* X;

x3 = zeros(1, length(X));

for k = 1 : 1 : 5
    x3 = x3 + n .* [zeros(1,L+k) x zeros(1,R-k)];
end
figure('Name','problem 5');
subplot(4,1,1);
stem(n,X);
xlabel('n');
ylabel('x[n]');
title('x[n]');

subplot(4,1,2);
stem(n,x1);
xlabel('n');
ylabel('x1[n]');
title('x1[n]');

subplot(4,1,3);
stem(n,x2);
xlabel('n');
ylabel('x2[n]');
title('x2[n]');

subplot(4,1,4);
stem(n,x3);
xlabel('n');
ylabel('x3[n]');
title('x3[n]');