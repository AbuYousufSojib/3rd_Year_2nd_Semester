clc;clear all;close all;

n = [1 0 1 0];
N = length(n);
fs = 1000*N;
t = 0:1/fs:N;
N1 = length(t);
i=1;

for j=1:N1
    if t(j)<=i
        x(j)=n(i);
    else
        i = i+1;
    end
end

subplot(411);
plot(t,x,'Linewidth',2);
axis([0 N -2 2]);

a=2;
f1=20;
f2=5;

x1 = a*sin(2*pi*f1*t);
subplot(412);
plot(t,x1,'Linewidth',2);
axis([0 N -2 2]);

x2=a*sin(2*pi*f2*t);

for j=1:N1
    if x(j)==1;
        y(j)=x1(j);
    else
        y(j)=x2(j);
    end
end

subplot(413);
plot(t,y,'Linewidth',2);
axis([0 N -2 2]);

for j=1:N1
    if x(j)==1
        y1(j)=1;
    else
        y1(j)=0;
    end
end
subplot(414);
plot(t,y1,'Linewidth',2);
axis([0 N -2 2]);
