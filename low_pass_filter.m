% Load noisy audio
[noisyAudio, Fs] = audioread('noisy_music.wav');
% Apply Low-Pass Filter
cutoffFrequency = 2000; % cutoff frequency in Hz
filteredAudio = lowpass(noisyAudio, cutoffFrequency, Fs);
% Save filtered audio
audiowrite('lowpass_filtered.wav', filteredAudio, Fs);
% Plot comparison
figure
subplot(2,1,1)
plot(noisyAudio)
title('Noisy Audio Signal')
subplot(2,1,2)
plot(filteredAudio)
title('Low-Pass Filtered Signal')
% Play noisy audio
disp('Playing Noisy Audio...')
sound(noisyAudio, Fs)
pause(length(noisyAudio)/Fs + 2)
% Play filtered audio
disp('Playing Filtered Audio...')
sound(filteredAudio, Fs)
disp('Filtered audio saved as lowpass_filtered.wav')