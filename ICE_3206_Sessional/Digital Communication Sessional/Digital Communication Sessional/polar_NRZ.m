clc;
clear all;
close all;
b=input('Enter the Bit stream \n '); 
n = length(b);
t = 0:.01:n;
x = 1:1:(n+1)*100;

for i = 1:n
    for j = i:.1:i+1
        if b(i)==1
            bw(x(i*100:(i+1)*100)) = 1;
        else
           bw(x(i*100:(i+1)*100))=-1; 
        end
    end
end

bw = bw(100:end);
subplot(1,1,1)
plot(t,bw,'Linewidth',2)
grid on ; 
axis([0 n -1.5 +1.5]);
title("polar Return to zero.");
xlabel("Time..........>>");
ylabel("Amplitude........>>");