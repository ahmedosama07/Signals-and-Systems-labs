t = 0:0.1:10;
% t = linspace(0, 10);

y1 = sin(t) ./ t;
y2 = (1 ./ ((t - 1).^2)) + t;
y3 = ((t.^2) + 1) ./ ((t.^2) - 4);
y4 = (nthroot((10 - t), 3) - 2) ./ sqrt(4 - (t.^2));

subplot(4,1,1);
plot(t,y1);
subplot(4,1,2); 
plot(t,y2);
subplot(4,1,3); 
plot(t,y3);
subplot(4,1,4); 
plot(t,y4);