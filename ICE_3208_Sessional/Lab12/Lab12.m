[filename,pathname]=uigetfile('*.*', 'select the input audio');
[x, Fs]=audioread(num2str(filename));
Fsf=44100; %sampling frequency
Fp=8e3; %passband frequency in Hz
Fst=8.4e3; %stopband frequency in Hz
Ap=1; %passband ripple in db
Ast=95; %stopband attenuation in db
%design the filter
df=designfilt('lowpassfir', 'PassbandFrequency', Fp, 'StopbandFrequency', Fst, 'PassbandRipple', Ap, 'StopbandAttenuation', Ast, 'SampleRate', Fsf);
fvtool(df) %visualize frequency response fvtool(df);
xn=awgn(x,15, 'measured'); %signal corrupted by white gaussian noise
y=filter(df, xn);
subplot(3,1,1), plot(x(1:450)); title('original signal');
subplot(3,1,2), plot(xn(1:450)); title('noisy signal');
subplot(3,1,3), plot(y(1:450)); title('filtered signal');