clc;clear all;close all;

b = input('Enter bit-Streams: ');

N = length(b);
t = 0:0.01:N;
x = 1:1:(N+1)*100;

for i = 1:N;
    for j = i:.1:i+1;
        bw(x(i*100:(i+1)*100))=b(i);
    end
end
 bw =bw(100:end);
 subplot(411);
 plot(t,bw,'Linewidth',2);
 grid on;
 axis([0 N -2 2]);
 
 sint = sin(2*pi*t);
 st = bw.*sint;
 subplot(412);
 plot(t,sint,'Linewidth',2);
 axis([0 N -2 2]);
 
 subplot(413);
 plot(t,st,'Linewidth',2);
 axis([0 N -2 2]);
 
 for k = 1:length(st)
     if st(k)==0
         y(k)=0;
     else
         y(k)=1;
     end
 end
 subplot(414);
 plot(t,y,'Linewidth',2);
 axis([0 N -2 2]);
 
