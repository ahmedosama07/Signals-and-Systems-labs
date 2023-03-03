%% Problem 1
% Salaries in June 2004
S = [150 150 150 160];
% Salaries in June 2005
S = S + 10;
% Salaries in June 2006
S = 1.1 .* S;
%% Problem 2
V = [2 8 7 3 1 0 8 9];
V(find(mod(V,2)==0)) = -1;
V(find((mod(V,2)~=0) & V ~= -1)) = 1;
%% Problem 3
V=[1 : 10]';
V
%a) Add 2 to the last 3 elements of V
V(end-2 : end) = V(end-2 : end) + 2;
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
M_leftSideRight = flip(M,2);

%b) Reflect array (M) upside down
M_upsideDown = flip(M);

%c) Swap columns 2 and 3 of array (M)
M_swap2And3Cols = M;
temp = M_swap2And3Cols(:, 2);
M_swap2And3Cols(:, 2) = M_swap2And3Cols(:, 3);
M_swap2And3Cols(:, 3) = temp;

%d) Swap rows 1 and 4 of array (M)
M_swap1And2Rows = M;
temp = M_swap1And2Rows(1, :);
M_swap1And2Rows(1, :) = M_swap1And2Rows(4, :);
M_swap1And2Rows(4, :) = temp;

%e) Shuffle the rows of (M) from [1 2 3 4] to [1 3 4 2] and shuffle the columns of (M) from [1 2 3 4] to [3 2 4 1]
M_shuffled = M;
% Shuffle columns
temp = M_shuffled(2, :);
M_shuffled([2 3], :) = M_shuffled([3 4], :);
M_shuffled(4, :) = temp;
% Shuffle rows
temp = M_shuffled(:, [2 3]);
M_shuffled(:, [3 4]) = M_shuffled(:, [4 1]);
M_shuffled(:, [2 1]) = temp;
%% Problem 6
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
%% Problem 7
% 2x1  +  3x2  +  5x3  +  6x4  + 21x5  = 152
% 5x1          +  2x3  +  2x4          =  19
% 6x1  +  7x2  +  8x3  +  9x4  + 11x5  = 135
%        13x2  + 17x3  +  5x4  +  6x5  = 127
%  x1  +  4x2          +  3x4  +  9x5  =  66
A = zeros(5);
B = zeros(5, 1);

load("matlab.mat");
openvar('A');

B = input('Enter the RHS inside [] separated by simicolons: ');
 
augA = [A B];
rankA = rank(A);
rank_augA = rank(augA);
S = rankA == 5;
 
if S == 1
    disp('Consistent');
    X = linsolve(A,B);
end
A
X