clc;close all;close all;

n = [0 0 1 0 0 1 1 1];
N = length(n);
t=0:0.01:N;
x = 1:1:(N+1)*100;

for i =1:N
    if n(i)==0
        p(i)=-1;
    else
        p(i)=1;
    end
end

even_seq =p(1:2:N);
odd_seq=p(2:2:N);

i=1;
m=2:2:N;

for j = 1:length(t)
    if t(j)<=m(i)
        even_s(j) = even_seq(i);
    else
        even_s(j) = even_seq(i);
        i=i+1;
    end
end
figure(1);
subplot(211);
plot(t,even_s);
axis([0 N -2 2]);
i=1;
m = 2:2:N;

for j =1:length(t)
    if t(j)<=m(i)
        odd_s(j)= odd_seq(i);
    else
        odd_s(j) = odd_seq(i);
        i = i+1;
    end
end

subplot(212);
plot(t,odd_s);
axis([0 N -2 2]);

s1 = 2*sin(2*pi*t);
figure(2);
subplot(211);
plot(t,s1);

s2= 2*cos(2*pi*t);
subplot(212);
plot(t,s2);

r1= even_s.*s1;
figure(3);
subplot(411);
plot(t,r1);

r2 = odd_s.*s2;
subplot(412);
plot(t,r2);

subplot(413);
plot(t,(r1-r2));

for j=1:length(t)
    if n(i)==0
        y3(j)=0;
    else
        y3(j)=1;
    end
end
subplot(414);
plot(t,y3);
axis([0 N -2 2]);
