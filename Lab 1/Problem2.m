V = [2 8 7 3 1 0 8 9];
V(mod(V,2)~=0) = 1;     % odd numbers
V(mod(V,2)==0) = -1;    % even numbers