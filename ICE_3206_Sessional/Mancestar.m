clc;clear all;close all;

n = [0 1 0 1];
N = length(n);
t = 0:0.01:N;
x = 1:1:(N+1)*100;

for i=1:N
    for j = i:.1:i+1
        if n(i)==1
            bw(x(i*100:(i*100)+50))=1;
            bw(x((i*100)+50):(i+1)*100)=-1;
        else
            bw(x(i*100:(i*100)+50))=-1;
            bw(x((i*100)+50):(i+1)*100)=1;
        end
    end
end
    
bw = bw(100:end);

plot(t,bw,'Linewidth',2)
axis([0 N -1.5 1.5]);
%grid on;
title('Manchester-Coding');
xlabel('Time(s)----->');
ylabel('Amplitude----->');