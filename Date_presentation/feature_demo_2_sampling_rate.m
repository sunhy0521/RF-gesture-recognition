function [EMIS_seq,Time_eva] = feature_demo_2_sampling_rate( cluster_number,n_fold)
%Author:Hongyu 
%Date:1-23-2017
load 'training_set_add_min_20.mat';
training_data =Training_set;
cd 'sample_adjust';
training_data=upsampling(training_data,n_fold);
cd ..;

cd Kmeans_demo;
[index,center,time,freq,power,EMIS_seq,Label_seq,RSS_power,Time_eva]=kmeans_classification(training_data,cluster_number);
cd ..;

end

