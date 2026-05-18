% Load clean audio
[cleanAudio, Fs] = audioread('non_noise.wav');
% Load noisy audio
[noisyAudio, ~] = audioread('noisy_music.wav');
% Match lengths
minLength = min(length(cleanAudio), length(noisyAudio));
cleanAudio = cleanAudio(1:minLength);
noisyAudio = noisyAudio(1:minLength);
% Create features for AI
X = [noisyAudio,movmean(noisyAudio,5),movmean(noisyAudio,15)];
% Train Linear Regression Model
model = fitlm(X, cleanAudio);
% Predict cleaned audio
predictedAudio = predict(model, X);
% Final smoothing step
predictedAudio = movmean(predictedAudio, 8);
% Normalize audio
predictedAudio = predictedAudio / max(abs(predictedAudio));
% Save audio
audiowrite('ai_filtered.wav', predictedAudio, Fs);
% Play result
disp('Playing AI Cleaned Audio...')
sound(predictedAudio, Fs)