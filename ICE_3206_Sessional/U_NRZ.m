clc;close all;clear all;
n =input('Enter bits: ');
N = length(n);
inp = input('Enter amplitude level: ');
for i = 1:N;
    if n(i) == 1
        d(i) = inp;
    else
        d(i) = 0;
    end
end
k=1;
t= 0:0.01:length(n);
%m = length(t);
for j=1:length(t)
    if t(j) <= k;
        y(j) = d(k);
    else
        y(j) = d(k);
        k = k+1;
    end
end
plot(t,y);
axis([0,N,-(inp+1),(inp+1)]);
title('Unipolar NRZ');
xlabel('Time');
xlabel('Amplitude');
        
