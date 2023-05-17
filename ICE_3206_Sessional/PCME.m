clc; clear all; close all;

n= input('Enter the n-bit PCM system: ');
n1= input('Enter the samples in a period: ');
L = 2^n;

x = 0:2*pi/n1:4*pi;
s = 8*sin(x);

subplot(311);
plot(s);
title('Analog Signal');

subplot(312);
stem(s);
title('Sampled signal');

vmax = 8;
vmin = -vmax;
del = (vmax-vmin)/L;

part = vmin:del:vmax;

code = vmin-(del/2):del:vmax+(del/2);

[ind,q] = quantiz(s,part,code);

l1 = length(ind);
l2 = length(q);

for i=1:l1
    if ind(i) ~=0
        ind(i) = ind(i)-1;
    else
        i = i+1;
    end
end

for i=1:l2
    if (q(i)==vmin-(del/2))
        q(i)=vmin+(del/2);
    end
end

subplot(313)
stem(q);
title('Quantized Signal');


figure(2);
code = de2bi(ind,'left-msb');
k =1;
for i=1:l1
    for j =1:n
        coded(k) = code(i,j);
        j = j+1;
        k = k+1;
    end
    i = i+1;
end

subplot(211);
stairs(coded);
axis([0 100 -2 2]);
title('Encoded Signal');

qunt = reshape(coded,n,length(coded)/n);
index = bi2de(qunt','left-msb');
q = del*index+vmin+(del/2);
subplot(212);
plot(q);
title('Demodulated Signal');