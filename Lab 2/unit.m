function u = unit(n)
%unit Summary of this function goes here
%   function generates unit step function
u = heaviside(n);
u(u>0)=1;
end