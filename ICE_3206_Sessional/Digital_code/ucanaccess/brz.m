%%%%BRZ%%%
bitstream = [1 0 1 0 1 0];
len = length(bitstream);
bitrate =1;
n = 1000;
time =len/bitrate;
N = n*len;
dt = time/N;
t = 0:dt:len;
x = zeros(1,length(t));
previousbit = -1; % need for know previous bit because alternate 
for i=1:len
    if bitstream(i)==1
          x((i-1)*n+1:(i-1)*n+n/2)=-previousbit;
        previousbit = -previousbit;
    end
end
plot(t,x,'LineWidth',3);
axis([0 len -2 2]);
grid on;
title("BRZ");
xlabel('Time in sec');
ylabel('Amplitude');