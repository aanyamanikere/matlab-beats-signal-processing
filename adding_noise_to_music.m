% Load original audio
[audio, Fs] = audioread('non_noise.wav');
% Convert stereo to mono (optional)
audio = mean(audio, 2);
% Add white noise
noiseLevel = 0.1; % adjust for more/less noise
noisyAudio = audio + noiseLevel * randn(size(audio));
% Prevent clipping
noisyAudio = noisyAudio / max(abs(noisyAudio));
% Save noisy audio
audiowrite('noisy_music.wav', noisyAudio, Fs);
% Play original audio
disp('Playing Original Audio...')
sound(audio, Fs)
pause(length(audio)/Fs + 2)
% Play noisy audio
disp('Playing Noisy Audio...')
sound(noisyAudio, Fs)
disp('Noisy audio saved as noisy_music.wav')