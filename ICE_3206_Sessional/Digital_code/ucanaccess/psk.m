clc;
clear all;
close all;
bitstream=[ 1 0 1 0 1 0]; % Binary Information
BitP=1; % bit rate
% binary information to digital signal
bit=[];
for n=1:1:length(bitstream)
 if bitstream(n)==1;
 se=ones(1,100);
 else bitstream(n)==0;
 se=zeros(1,100);
 end
 bit=[bit se];
end

t1=BitP/100:BitP/100:100*length(bitstream)*(BitP/100);
subplot(3,1,1);
plot(t1,bit,'lineWidth',2.5);grid on;
axis([ 0 BitP*length(bitstream) -2 2]);
ylabel('Amplitude');
xlabel('Time in sec');
title('Binary to digital signal');
% Binary-PSK
A=5; % Amplitude of carrier signal
br=1/BitP; % bit rate
f=br*2; % carrier frequency
t2=BitP/99:BitP/99:BitP;
ss=length(t2);
m=[];
for (i=1:1:length(bitstream))
 if (bitstream(i)==1)
 y=A*cos(2*pi*f*t2);
 else
 y=A*cos(2*pi*f*t2+pi); %A*cos(2*pi*f*t+pi) means -A*cos(2*pi*f*t)
 end
 m=[m y];
end
t3=BitP/99:BitP/99:BitP*length(bitstream);
subplot(3,1,2);
plot(t3,m);
xlabel('Time in sec');
ylabel('Amplitude');
title('PSK Modulation');
%Binary PSK demodulation
mn=[];
for n=ss:ss:length(m)
 t=BitP/99:BitP/99:BitP;
 y=cos(2*pi*f*t); % carrier siignal
 mm=y.*m((n-(ss-1)):n);
 t4=BitP/99:BitP/99:BitP;
 z=trapz(t4,mm) % intregation
 zz=round((2*z/BitP))
 if(zz>0) % logic level = (A+A)/2=0
 %becouse A*cos(2*pi*f*t+pi) means -A*cos(2*pi*f*t)
 a=1;
 else
 a=0;
 end
 mn=[mn a];
end
%PSK demodulation
bit=[];
for n=1:length(mn);
 if mn(n)==1;
 se=ones(1,100);
 else mn(n)==0;
 se=zeros(1,100);
 end
 bit=[bit se];
end
t4=BitP/100:BitP/100:100*length(mn)*(BitP/100);
subplot(3,1,3)
plot(t4,bit,'LineWidth',2.5);grid on;
axis([ 0 BitP*length(mn) -2 2]);
ylabel('Amplitude');
xlabel('Time in sec');
title('PSK demodulation');