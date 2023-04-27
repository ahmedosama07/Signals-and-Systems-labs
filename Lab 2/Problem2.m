x = 0:0.1:10;
% t = linspace(0, 10);

y1 = sin(x) ./ x;
y2 = (1 ./ ((x - 1).^2)) + x;
y3 = ((x.^2) + 1) ./ ((x.^2) - 4);
y4 = (nthroot((10 - x), 3) - 2) ./ sqrt(4 - (x.^2));

figure('Name','problem 2');
subplot(4,1,1);
plot(x,y1);
xlabel('x');
ylabel('y1[x]');
title('y1[x]');

subplot(4,1,2); 
plot(x,y2);
xlabel('x');
ylabel('y2[x]');
title('y2[x]');

subplot(4,1,3); 
plot(x,y3);
xlabel('x');
ylabel('y3[x]');
title('y3[x]');

subplot(4,1,4); 
plot(x,y4);
xlabel('x');
ylabel('y4[x]');
title('y4[x]');