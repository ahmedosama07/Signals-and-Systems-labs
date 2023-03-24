%%  1
 t=linspace(0,2,1000);
%%  2
x1=zeros(1,100)-5;
x2=17.3*ones(1,100);
t=linspace(-4,2,600);
x3=-2*t+5;
x4=1/3*t.^3-2*t-7;
x5=5*sin(2*pi*t-pi/4);
x6=1/2*cosh(0.5*t);
x7=5*exp(-0.4*t);
x8=log(t+5);
x9=log10(t+5);
%%  3
y1=ones(1,2000);
t=linspace(-1,1,2000);
y2=4*cos(2*pi*t/4);
y=[y1 y2 y1];
%%  4
x1=[1 5 3 7 4 2 6 9 3 1 5 7];
x1d=downsample(x1,3);
x1u=upsample(x1,3);
x1r_3_over_2=resample(x1,3,2);
x1r_2_over_3=resample(x1,2,3);
%%  5
t=linspace(-2,4,6000);
x=4*sin(pi*t).*exp(-0.4*t);
x1=[zeros(1,2000) x(1:4000)];
x2=[x(4001:end) x(1:4000)];
t3=linspace(-4,8,12000);
x3=resample(x,2,1);
t4=linspace(-1/2,1,1500);
x4=downsample(x,4);
t5=linspace(-4,2,6000);
x5=x(end:-1:1);
%%  6
t=linspace(0,4,400);
x=5*sin(2*pi*t);
I1=find(x>3);
x(I1)=3;
I1=find(x<-4);
x(I1)=-4;
%%  7
t=linspace(0,4,400);
x=3*sin(2*pi*t);
x1=x;
x1(find(x1<0))=0;
x2=x.*(x>0);
%%  8
t=linspace(0,4,400);
x=3*sin(2*pi*t);
x1=abs(x);
%%  9
t=linspace(0,4,400);
x1=4*sin(2*pi*t);
x2=3*sin(2*pi*t+2*pi/3);
x3=3*cos(2*pi*t);
x1greatest=(x1>x2)&(x1>x3);
x2greatest=(x2>x1)&(x2>x3);
x3greatest=(x3>x1)&(x3>x2);
y=x1greatest.*x1+ x2greatest.*x2+ x3greatest.*x3;
%%  10
t=linspace(0,4,400);
x=5*sin(2*pi*t).*exp(-0.5*t);
x_dash=100*diff(x);
%%  11
x=[0 0 1 1 1 1 0 0];
xACR=xcorr(x);
%%  12
x1=[0 0 1 1 1 1 0 0];
x2=[0 0 1 1 1 0 1 0]
CCSignal=xcorr(x1,x2);
%%  13
x=1+2*rand(1,1000);
mu=mean(x);
MinVal=min(x);
MaxVal=max(x);
Variance=var(x);
StdDev=std(x);
%%  14
x1=x;
x1(find(x1>0))=1;
x1(find(x1<0))=-1;
Crossings=(-(x1.*[0 x1(1:end-1)])==1)|(x1==0);
NumberofCrossings=sum(Crossings);
ComparisonLevel=(mean(x)+max(x))/2;
PercentageTime=100*length(find(x>ComparisonLevel))/length(x);
%%  15
hist(x,10);
hist(x,100);