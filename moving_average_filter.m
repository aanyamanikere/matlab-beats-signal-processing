% Load noisy audio
[noisyAudio, Fs] = audioread('noisy_music.wav');
% Apply Moving Average Filter
windowSize = 10; % size of averaging window
filteredAudio = movmean(noisyAudio, windowSize);
% Save filtered audio
audiowrite('moving_average_filtered.wav', filteredAudio, Fs);
% Plot comparison
figure
subplot(2,1,1)
plot(noisyAudio)
title('Noisy Audio Signal')
subplot(2,1,2)
plot(filteredAudio)
title('Moving Average Filtered Signal')
% Play noisy audio
disp('Playing Noisy Audio...')
sound(noisyAudio, Fs)
pause(length(noisyAudio)/Fs + 2)
% Play filtered audio
disp('Playing Filtered Audio...')
sound(filteredAudio, Fs)
disp('Filtered audio saved as moving_average_filtered.wav')