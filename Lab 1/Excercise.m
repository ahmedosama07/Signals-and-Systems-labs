%% Problem 1
S = [150 150 150 160];

S = S + 10;

S = 1.1 .* S;
%% Problem 2
V = [2 8 7 3 1 0 8 9];
V(find(mod(V,2)==0)) = -1;
V(find((mod(V,2)~=0) & V ~= -1)) = 1;
%% Problem 3
V=[2 8 7 3 1 0 8 9]';

%a) Add 2 to the last 3 elements of V
V(end) = V(end) + 2;
%b)Reverse the order of the last 4 elements of V.
V([end-3 : end]) = flip(V([end-3 : end]));
%c) Add the elements number 1, 3, 5 …etc to the elements number 2, 4, 6 … etc, and store the results in the place of the later elements.
V(2:2:end) = V(1:2:end) + V(2:2:end);
%% Problem 4
P = [([1:1:9]).^2 ([8:-1:1]).^2];
%% Problem 5
M = [1  2  3  4;
    -1 -2 -3 -4;
     1  2  3  4;
    -1 -2 -3 -4];
%a) Reflect array (M) left-side right
M = flip(M,2);
%b) Reflect array (M) upside down
M = flip(M);
%c) Swap columns 2 and 3 of array (M)
temp = M(:, 2);
M(:, 2) = M(:, 3);
M(:, 3) = temp;
%d) Swap rows 1 and 4 of array (M)
temp = M(1, :);
M(1, :) = M(4, :);
M(4, :) = temp;
%Shuffle the rows of (M) from [1 2 3 4] to [1 3 4 2] and shuffle the columns of (M) from [1 2 3 4] to [3 2 4 1]
M = [1  2  3  4;
    -1 -2 -3 -4;
     1  2  3  4;
    -1 -2 -3 -4];

temp = M(2, :);
M([2 3], :) = M([3 4], :);
M(4, :) = temp;

temp = M(:, [2 3]);
M(:, [3 4]) = M(:, [4 1]);
M(:, [2 1]) = temp;
%% Problem 6
x = [1 0 0 0 -1;
     2 0 0 0 -2;
     3 0 0 0 -3;
     4 0 0 0 -4;
     5 0 0 0 -5];
 
y = x';
z = [y(:, [1:3]) y(:, [2 1])];
w = [x(:, 1).*2 x(:, [2:4])+100 x(:, 5)./-10];
%% Problem 7
% 2x1  +  3x2  +  5x3  +  6x4  + 21x5  = 152
% 5x1          +  2x3  +  2x4          =  19
% 6x1  +  7x2  +  8x3  +  9x4  + 11x5  = 135
%        13x2  + 17x3  +  5x4  +  6x5  = 127
%  x1  +  4x2          +  3x4  +  9x5  =  66
A = zeros(5);
openvar('A');
%% Rest of problem 7
B = zeros(5, 1);
B = input('Enter the RHS inside [] separated by simicolons: ');
%% 
augA = [A B];
rankA = rank(A)
rank_augA = rank(augA)
S = rankA == 5;
%% 
disp('Consistent');
A
% t = augA(5, :);
% augA(5, :) = augA(1, :);
% augA(1, :) = t;
% augA
X = linsolve(A,B);
X