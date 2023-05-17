clc; 
clear all; 
close all; 
 
A=1;
fc=1; 
t=linspace(0,1,1000);
x_t=A*sin(2*pi*fc*t);
s=.2; 


s_t=0;
v=1;
mqc_t=0;

for i=1:5:length(t)
  if(x_t(1,i)>mqc_t(1,v))
    s_t(1,v)=1;
    mqc_t(1,v+1)=mqc_t(1,v)+s;
  else
    s_t(1,v)=0;
    mqc_t(1,v+1)=mqc_t(1,v)-s;
  end
t1(1,v)=t(1,i);
v=v+1;
end
 
subplot(3,1,1) 
plot(t,x_t);
title('Message Signal');
xlabel('Time Axis');
ylabel('Amplitude');
hold on
stairs(t1,mqc_t(2:201))
 
subplot(3,1,2) %second plot
%stairs(s_t)
title('Delta Modulated Signal ');
xlabel('Time Axis');
ylabel('Amplitude');
hold on
stem(s_t,'r')
axis([0 200 -0.5 1.5])
 
%Demodulation
mq_t=0;
%Convert bit stream into steps and integrate
for i=1:length(s_t)
    if(s_t(i)==1)
        mq_t(i+1)=mq_t(i)+s;
    else
        mq_t(i+1)=mq_t(i)-s;
    end
end
 
%Filtering through LPF
[b,a]=butter(5,.1); % nth order=5 and normalized cutoff frequency=0.1
r_t=filter(b,a,mq_t);
 
subplot(3,1,3) 
plot(t1,r_t(2:201)) 
title('Demodulated Signal ');
xlabel('Time Axis');
ylabel('Amplitude');
%hold on;
