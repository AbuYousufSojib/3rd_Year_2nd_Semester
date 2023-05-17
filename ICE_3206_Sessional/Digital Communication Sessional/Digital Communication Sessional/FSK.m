clc;
close all;
clear all;
% Message signal input and ploting

n=input('Enter the Bit stream \n ');	% Message signal in binary form 
N=length(n);	% Length of message signal
fs = 1000*N;	% Sampling frequency 
t=0:1/fs:N;	% Time division with step b 
N1=length(t);	% Length of total divisions 
i=1;

%Run for Loop 
for j=1:N1
    if t(j)<=i
        x(j)=n(i); 
    else
        i=i+1;
    end
end
figure(1); 
subplot(4,1,1);
plot(t,x,'Linewidth',2);	%Message signal plot 
axis([0 N -1.5 1.5]);
title('Message signal');
xlabel('Time');
ylabel('Amplitude');
grid on

%Carrier signals generation (x1,x2)

a=2;	%Amplitude scale for carrier signal
f1=10;	%1st carrier signal frequency
f2=5;	%2nd carrier signal frequency

% Uncomment the following for user input

x1=a*sin(2*pi*f1*t);	%1st carrier signal 
subplot(4,1,2);
plot(t,x1);	%1st carrier signal plot
 
title('Carrier signal');
xlabel('Time'); 
ylabel('Amplitude');
grid on
x2=a*sin(2*pi*f2*t);	%2nd carrier signal 
%subplot(4,1,2);
%plot(t,x2);	%2nd carrier signal plot 
%title('carrier signal');
%xlabel('Time'); 
%ylabel('Amplitude'); 
grid on
%Modulation section 
for j=1:N1
    if x(j)==1
        y1(j)=x1(j); 
    else
        y1(j)=x2(j);
    end
end
subplot(4,1,3);
%Plot of FSK output signal 
plot(t,y1);
title('Modulated FSK output');
xlabel('Time'); ylabel('Amplitude'); grid on
%FSK Receiver section 
for j=1:N1
    if y1(j)==x1(j) 
        y2(j)=1;
    else
        y2(j)=0;
    end
end
subplot(4,1,4);

%Plot of FSK demodulated signal
 
plot(t,y2,'Linewidth',2);
axis([0 N -1.5 1.5]);
title('Demodulated FSK signal');
xlabel('Time'); 
ylabel('Amplitude');
grid on
