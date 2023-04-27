t1 = linspace(-2,0,100);
x1 = 4*ones(1,100);
t2 = linspace(0,1,100);
x2 = sin(pi/2*t2+pi/2)+3;
t3 = linspace(1,3,100);
x3 = 3*ones(1,100);
x = [x1 x2 x3];
t = [t1 t2 t3];

figure('Name','problem 1');

plot(t,x);
ylim([0 6]);
xticks(-2:1:3);
grid();