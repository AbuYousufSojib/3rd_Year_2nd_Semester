Fs=44100; %sampling frequency, default value is 8192
noc=1; %no of input channel
nob=16; %no of bits per sample, default value is 8bits per sample
recObj=audiorecorder(Fs, nob, noc);
%record(recObj)
%pause(5); % no ofseconds
recordblocking(recObj, 5); %start recording for 5 seconds
play(recObj); %play back the recording
myRecording=getaudiodata(recObj); %getting recorded audio data as an array
plot(myRecording);
sound(myRecording, Fs); %play back the recording
audiowrite('E:\3-2\ICE-3207 DISP\ICE-3208 Sessional\Exm\Lab14\miketest.wav', myRecording, Fs);