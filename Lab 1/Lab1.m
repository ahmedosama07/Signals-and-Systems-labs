
%% Factorial

n = 6;
fact = 1;
sum = 0;
for i = 1 : 1 : n
    fact = fact * i;
    sum = sum + i;
end

%% Matrix

mat = [1 7 8 3;
       2 3 11 4;
       4 2 3 6];

mat([1:end], 1) = mat([1:end], 1) + mat([1:end], 2);
mat([1:end], 3) = mat([1:end], 3) + mat([1:end], 4);
mat([1:end], 2) = 0;
mat([1:end], 4) = 0;
mat