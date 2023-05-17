clc;close all;clear all;
n = [0 1 0 1 0 0 1 1];
N = length(n);
t=0:.01:N;
x=1:1:(N+1)*100;

for i=1:N
    if (n(i)==0)
        b_p(i)=-1;
    else
        b_p(i)=1;
    end
    for j=i:.1:i+1
        bw(x(i*100:(i+1)*100)) = b_p(i);
    end
end
bw = bw(100:end);
subplot(411);
plot(t,bw,'Linewidth',2);
axis([0 N -2 2]);

sint = sin(2*pi*t);
subplot(412);
plot(t,sint,'Linewidth',2);
axis([0 N -2 2]);

st = bw.*sint;
subplot(413);
plot(t,st,'Linewidth',2);
axis([0 N -2 2]);

subplot(414);
plot(t,bw,'Linewidth',2);
axis([0 N -2 2]);
        