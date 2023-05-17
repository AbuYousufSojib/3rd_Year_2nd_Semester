clc;clear all;close all;
n= [0 1 0 1];
N= length(n);
t= 0:0.01:N;
x= 1:1:(N+1)*100;

for i=1:N
    for j=i:.1:i+1
        bw(x(i*100:(i+1)*100))=n(i);
    end
end
bw = bw(100:end);
subplot(411);plot(t,bw,'Linewidth',2);
title('BitStream');
axis([0 N -2 2]);
sint= sin(2*pi*t);
subplot(412);plot(t,sint,'Linewidth',2);
title('Carrier Signal');
axis([0 N -5 5]);
st=bw.*sint;
subplot(413);plot(t,st,'Linewidth',2);
title('Modulated Signal');
axis([0 N -2 2]);

for j=1:length(st);
    if st(j)==0
        y(j)=0;
    else
        y(j)=1;
    end
end
subplot(414);
plot(t,y,'Linewidth',2);
title('Demodulated Signal');
axis([0 N -2 2]);