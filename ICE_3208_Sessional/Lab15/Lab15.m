NET.addAssembly('System.speech');
mySpeaker=System.Speech.Synthesis.SpeechSynthesizer;
mySpeaker.Rate=3;
mySpeaker.Volume=100;
Speak(mySpeaker, 'Hello, This is a Test!');