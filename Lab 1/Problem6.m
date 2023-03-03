% x = [1 0 0 0 -1;
%      2 0 0 0 -2;
%      3 0 0 0 -3;
%      4 0 0 0 -4;
%      5 0 0 0 -5];
x = zeros(5);
x(1:5, 1) = [1 : 5];
x(1:5, 5) = -x(1:5, 1);

y = x';
z = [x([1:3], :)' x([2 1], :)'];
w = [x(:, 1).*2 x(:, [2:4])+100 x(:, 5)./-10];