clc;close all;clear all;
n = input('Enter bits: ');
N = length(n);
amp = input('Enter amplitude: ');
p=1;
for i = 1: N
    if n(i) == 1
        if p == 1
            d(i) = amp;
            p = -1;
        else
            d(i)=-amp;
            p = 1;
        end
    else
        d(i)=0;
    end
end
k=1;
a=0;
b=0.5;
t=0:0.01:N;
for j = i:length(t)
    if t(j) >= a && t(j)<=b
        y(j) = d(k);
    elseif t(j) >=b && t(j)<=k
        y(j)=0;
    else
        k=k+1;
        a=a+1;
        b=b+1;
    end
end
y=y(100:end);
plot(t,y,'Linewidth',2);
grid on;
axis([0,N,-(amp+1),(amp+1)]);
xlabel('Times');
ylabel('Amplitude');
         
     