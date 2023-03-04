V = (1 : 10)';
%% a) Add 2 to the last 3 elements of V
V(end-2 : end) = V(end-2 : end) + 2;
%% b)Reverse the order of the last 4 elements of V.
V([end-3 : end]) = flip(V([end-3 : end]));
%% c) Add the elements number 1, 3, 5 …etc to the elements number 2, 4, 6 … etc, and store the results in the place of the later elements.
V(2:2:end) = V(1:2:end) + V(2:2:end);