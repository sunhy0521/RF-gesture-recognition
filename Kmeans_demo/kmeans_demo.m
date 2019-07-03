clear clean;
clc;
load 'Data_run.mat';
[x,y]=size(P1_data);
% [time, freq]=size(spectrogram(P1_data(1,:)));

[signal,freq,time,power]=spectrogram(P1_data(1,:),128,120,1:200,1000);

% data_freq=zeros(x,time,freq)
for i=2:1:x
%    data_freq(i,:,:)=spectrogram(P1_data(i,:));
    [Signal,Freq,Time,Power] = spectrogram(P1_data(i,:),128,120,1:200,1000);
    power = cat(1,power,Power);
end

% mesh(power);
[idx,C] = kmeans(power,20);
