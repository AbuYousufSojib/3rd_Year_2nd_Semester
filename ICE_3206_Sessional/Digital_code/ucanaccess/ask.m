clc;
clear all;
close all;

bitstream = [1 0 1 0 1 0]; % Bit stream
bitrate  = 1; % How many bit appear each second
n = 1000; % Sample point for each bit
T = length(bitstream)/bitrate; % total time needed for bitstream 
N = n*length(bitstream); % Total sampled point for whole bitstream
dt = T/N; %Found time for each sample point 
t = 0:dt:T;%time domain x axis
bw = zeros(1,length(t)); % All sampled point set zero 

for i =1:length(bitstream)
    if bitstream(i) ==1
       bw((i-1)*n+1:i*n) = 1;
    end
end
subplot(4,1,1)
plot(t,bw,'Linewidth',2)
grid on ; 
axis([0 6 -2 +2]);
title('Binary to digital signal');

sint = sin(2*pi*t);
st = bw.*sint;
subplot(4,1,2)
plot(t,sint,'Linewidth',2)
grid on ; 
axis([0 6 -2 +2]);
title('Carrier signal');

subplot(4,1,3)
plot(t,st,'Linewidth',2)
grid on ;
axis([0 6 -2 +2]);
title('ASK modulation signal');
for i=1:length(st)
    if st(i)==0
        y(i)=0;
    else
        y(i)=1;
    end
end

subplot(4,1,4);
plot(t,y,'Linewidth',2);
axis([0 6 -2 2]);
title('ASK demodulation signal');
