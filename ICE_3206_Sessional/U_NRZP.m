clc;clear all;close all;

n = input('Enter the bits: ');
N = length(n);

amp = input('Enter the amplitude: ');

for i = 1:N
    if n(i) == 1
        d(i) = amp;
    else
        d(i) = 0;
    end
end

k=1;
t= 0:0.01:N;
for j =1:length(t)
    if t(j) <= k
        y(j) = d(k);
    else
        y(j) = d(k);
        k = k+1;
    end
end
plot(t,y);
axis([0,N,-(amp+1),(amp+1)]);
xlabel('Time');
ylabel('Amplitude');