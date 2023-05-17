clc;clear all;close all;

n = [0 0 1 0 0 1 1 1];
N = length(n);
t= 0:0.01:N;
x = 1:1:(N+1)*100;

for i =1:N
    if n(i)== 0
        p(i)=-1;
    else
        p(i)=1;
    end
end

even_seq =p(1:2:N);
odd_seq =p(2:2:N);
i=1;
m =2:2:N;

for j=1:length(t)
    if t(j) <= m(i)
        even_s(j) = even_seq(i);
    else
        even_s(j) = even_seq(i);
        i = i+1;
    end
end

figure(1);
subplot(211);
plot(t,even_s,'r','Linewidth',3);
title('Even Signal');
%axis([0 N -2 2]);
i = 1;
m = 2:2:N;
for j = 1:length(t)
    if t(j) <= m(i)
        odd_s(j) = odd_seq(i);
    else
        odd_s(j) = odd_seq(i);
        i = i+1;
    end
end
figure(1);
subplot(212);
plot(t,odd_s,'b','Linewidth',3);
title('Odd Signal');
%axis([0 N -2 2]);

c1 = cos(2*pi*t);
c2 = sin(2*pi*t);
figure(2);
subplot(211);
plot(t,c1,'r');
title('Carrier Signal-1');

subplot(212);
plot(t,c2,'b');
title('Carrier signal-2');

r1=even_s.*c1;
r2=odd_s.*c2;

figure(3);
subplot(411);
plot(t,r1,'r');


subplot(412);
plot(t,r2,'b');

subplot(413);
plot(t,(r1-r2));
title('Even & Odd QPSK modulated signal');