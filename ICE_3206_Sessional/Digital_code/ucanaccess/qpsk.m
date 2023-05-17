%QPSK waveform generation
clc; clear all; close all;

%x=randi([0 1],1,10)
x=[1 0 1 0 0 1 1 1];
%Bits to polar
for i=1:length(x)
    if x(i)==0
        p(i)=-1;
    else
        p(i)=1;
    end
end
%Seperation of even and odd sequences
even_seq=p(1:2:length(x));
odd_seq=p(2:2:length(x));
%NRZ polar line coder signal generation
i=1;
t=0:0.01:length(x);
m=2:2:length(x);
for j=1:length(t)
    if t(j)<=m(i)
        even_ps(j)=even_seq(i);
    else
        even_ps(j)=even_seq(i);
        i=i+1;
    end
end
i=1;
m=2:2:length(x);
for j=1:length(t)
    if t(j)<=m(i)
        odd_ps(j)=odd_seq(i);
    else
        odd_ps(j)=odd_seq(i);
        i=i+1;
    end
end
figure(1);subplot(211);
plot(t,even_ps,'b','Linewidth',3);
title('Even signal');
subplot(212);
plot(t,odd_ps,'r','Linewidth',3);
title('Odd signal');
%Carrier signals generation
c1=cos(2*pi*1*t);
c2=sin(2*pi*1*t);
figure(2);
subplot(211);
plot(t,c1,'r');
title('Carrier signal 1');
subplot(212);
plot(t,c2,'b');
title('Carrier signal 2');
%QPSK Wveform generation
r1=even_ps.*c1;
r2=odd_ps.*c2;
qpsk_sig=r1-r2;
figure(3);
subplot(411);
plot(t,r1,'r');
subplot(412);
plot(t,r2,'b');
subplot(413);
plot(t,qpsk_sig,'b');
title('Even signal, Odd signal & QPSK signal');

N3=length(x);
n=1:1:(N3+1)*100;

for i =1:N3
    for j=i:.1:i+1
        if x(i)==1
            bw(n(i*100:(i+1)*100))=1;
        else
            bw(n(i*100:(i+1)*100))=-1;
        end
    end
end
bw = bw(100:end);
subplot(414);
plot(t,bw);
title('Demodulated signal');