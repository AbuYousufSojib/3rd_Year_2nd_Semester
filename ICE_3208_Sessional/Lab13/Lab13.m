[filename, pathname]=uigetfile('*.*', 'select the input audio');
[x, Fs]=audioread(num2str('E:\3-2\ICE-3207 DISP\ICE-3208 Sessional\Exm\taunt.wav'));
n=length(x); %get the length of the audio file
a=0.8; %attenuation factor
d=2000; %delay
y=zeros(n+d, 1); %initialize the output audio file
xn=padarray(x, [d,0], 0, 'Pre');
for i=(d+1):1:n
y(i-d, 1)=x(i)+a*xn(i-d);
end