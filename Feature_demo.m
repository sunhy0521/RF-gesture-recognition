function [EMIS_seq,Time_eva] = Feature_demo(cluster_number)
%FEATURE_DEMO �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
load 'training_set_min_15_fix.mat';
training_data =Training_set;

cd Kmeans_demo;
[index,center,time,freq,power,EMIS_seq,Label_seq,RSS_power,Time_eva]=kmeans_classification(training_data,cluster_number);
cd ..;


end

