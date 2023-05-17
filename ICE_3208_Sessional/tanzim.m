%Write a MATLAB program to implement Text to Speech signal.
NET.addAssembly('System.speech');
mySpeaker=System.Speech.Synthesis.SpeechSynthesizer;
 
mySpeaker.Rate=0;
mySpeaker.Volume=100;
 
Speak(mySpeaker, 'Information and Communication Engineering');