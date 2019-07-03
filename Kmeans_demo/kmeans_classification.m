function [index,center,time,freq,power,EMIS_seq,Label_seq,RSS_power,Time_eva] = kmeans_classification(training_data,cluster_number)
%Author:hongyu
%Date:10-22-2016
%Function: normalize the training data
%Parameters: 
%Input: traning_data, the data want to be classified by kmeans algorithm
      % cluster_number, the clusters you want to classified.
%Output: index, the index of the vectors you want to classified
        %center, the center of each clusters
        %EMIS_seq, the emission sequence of the traning data 
        %STATE_seq, the states sequence of the traning data
        
[x,y]=size(training_data);
label_initial=uint32(training_data(:,1));

% initial the matrix of power
tic;
RSS_power = 10.^((training_data(:,2:y)/10));
Time_eva(1,1)=toc;
  
[signal,freq,time,power]=spectrogram(10.^((training_data(1,2:y)/10)),128,120,1:80,1000);
 %[signal,freq,time,power]=spectrogram(((training_data(1,2:y))),128,120,1:200,1000);

signal = signal';
freq = freq';
time = time';
power = power';% row time; coloum frequency
%power = abs(signal);
[x_power,y_power] = size(power);

%x_power % the time 
%y_power % the frequency

label(1,:) = label_initial(1,1)*uint32(ones(x_power,1));

tic;
for i=2:1:x
    [Signal,Freq,Time,Power] = spectrogram(10.^((training_data(i,2:y)/10)),128,120,1:80,1000);
    %[Signal,Freq,Time,Power] = spectrogram(((training_data(i,2:y))),128,120,1:200,1000);
    label(i,:) = label_initial(i,1)*uint32(ones(x_power,1));
    signal = cat(1,signal,Signal');
    freq = cat(1,freq,Freq');
    time = cat(1,time,Time');
    power = cat(1,power,Power');
   % power = cat(1,power,abs(Signal)');
%   phase_s = phase(signal); 
end
Time_eva(1,2)=toc;

% power = 10*log10(power)
tic;
[idx,C] = kmeans(power,cluster_number);
Time_eva(1,3)=toc;

center = C
index = idx'
EMIS_seq = reshape(index,x_power,length(index)/x_power)'
Label_seq = label

end
