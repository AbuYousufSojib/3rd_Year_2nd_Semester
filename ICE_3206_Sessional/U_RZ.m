clc; clear all; close all;
n = input('Enter Bits: ');
N = length(n);
amp = input('Enter amplitude: ');

for i = 1:N
    if n(i) == 1
        d(i) = amp;
    else
        d(i) = 0;
    end
end
k=1;
a=0;
b=0.5;
t = 0:0.01:N;
for j = 1:length(t)
    if t(j)>=a &&  t(j)<=b
        y(j) = d(k);
    elseif t(j)>=b && t(j)<=k
        y(j) = 0;
    else
        k = k+1;
        a = a+1;
        b = b+1;
    end
end
plot(t,y,'Linewidth',2);
grid on;
axis([0,N,-(amp+1),(amp+1)]);
xlabel('Times');
ylabel('Amplitude');
