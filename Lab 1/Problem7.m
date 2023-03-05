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
 
if (rankA == rank_augA) && (S == 1)
    disp('Unique Solution');
    X = linsolve(A,B);
end
