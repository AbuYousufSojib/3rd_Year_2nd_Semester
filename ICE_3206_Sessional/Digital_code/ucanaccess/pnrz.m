%%%%PNRZ%%%
bitstream = [1 0 1 0 1 0];
bitrate = 1;
n = 1000;
len = length(bitstream);
T = len/bitrate;
N = n*len;
dt = T/N;
t = 0:dt:len;
x = zeros(1,length(t));

for i=1:len
    if bitstream(i)==1
        x((i-1)*n+1:i*n)=-1;
    else 
         x((i-1)*n+1:i*n)=1;
    end
end
plot(t,x,'LineWidth',3);
axis([0 len -2 2]);
grid on;
title("PNRZ");
xlabel('Time in sec');
ylabel('Amplitude');