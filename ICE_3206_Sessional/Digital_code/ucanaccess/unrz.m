%%%%UNRZ%%%
clc;clear all;close all;
bitstream = [1 0 1 0 1 0]; % Bit stream
bitrate  = 1; % How many bit appear each second
n = 1000; % Sample point for each bit
T = length(bitstream)/bitrate; % total time needed for bitstream 
N = n*length(bitstream); % Total sampled point for whole bitstream
dt = T/N; %Found time for each sample point 
t = 0:dt:T;%time domain x axis
x = zeros(1,length(t)); % All sampled point set zero 

for i =1:length(bitstream)
    if bitstream(i) ==1
       x((i-1)*n+1:i*n) = 1;
    end
end
plot(t,x,'Linewidth',3);
axis ([0 length(bitstream)  -2  2]);
title('UNRZ');
xlabel('Time in sec');
ylabel('Amplitude');
grid on;
