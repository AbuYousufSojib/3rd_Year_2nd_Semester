clc;clear all;close all;

n = [0 1 0 1];
N = length(n);
t = 0:0.01:N;
x = 1:1:(N+1)*100;

for i = 1:N
    for j = i:.1:i+1
        bw(x(i*100:(i+1)*100))=n(i);
    end
end
bw = bw(100:end);

plot(t,bw,'Linewidth',2)
axis([0 N -2 2]);
%grid on;
title('Unipolar-NRZ');
xlabel('Time(s)----->');
ylabel('Amplitude----->');