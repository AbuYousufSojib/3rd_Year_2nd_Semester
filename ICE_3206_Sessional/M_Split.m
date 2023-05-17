clc;close all;clear all;
n= [1 0 1 0 1 0 1 0];
N= length(n);
f=[];
for i = 1:N
    if n(i) == 1
        d= [1 -1];
    else
        d=[-1 1];
        
    end
    f=[d f];
end
k=1;
%a=0;
b=0.5;
t= 0:0.01:N;
for j = 1:length(t)
    if t(j) <=b
        y(j)=f(k);
    else
        y(j)=f(k);
        k = k+1;
        b = b+.5;
    end
end
plot(t,y,'Linewidth',2);
grid on;
axis([0,N,-1.5,1.5]);
xlabel('Times');
ylabel('Amplitude');
        