clear;
clc;
%% 画出特征的性能随着cluster_number的变化情况
clusters = [2 4 6 8 10 12 14 16];
vector = [20 20 20 40 80 80 80];
class =[1 21 41 61 101 181 261];
result_all = [1 1 1 1 1 1 1];
time_eva_all=[1 1 1];
for i=1:1:length(clusters)
[EMIS_seq,Time_eva] = Feature_demo(clusters(i));
time_eva_all=cat(1,time_eva_all,Time_eva);
cd 'Date_presentation';
dist = dist_EMIS_seq(EMIS_seq);
result_temp = [1 1 1 1 1 1 1];
for j=1:1:length(class)
result= dist_statistic( dist,vector,class(j));
result_temp = cat(1,result_temp,result);
end
result_all=cat(1,result_all,result_temp);
%csvwrite('a1.csv',result,(i-1)*28,0);
cd ..;
end
%% 画出特征的性能随着upsampling rate的变化情况
clear;
clc;
cluster_number = 10;
upsampling_rate = [2 4 6 8];
class =[1 21 41 61 101 181 261];
vector = [20 20 20 40 80 80 80];

result_all = [1 1 1 1 1 1 1];
time_eva_all=[1 1 1];
for i=1:1:length(upsampling_rate)
[EMIS_seq,Time_eva] = feature_demo_2_sampling_rate( cluster_number,upsampling_rate(i));
time_eva_all=cat(1,time_eva_all,Time_eva);

cd 'Date_presentation';
dist = dist_EMIS_seq(EMIS_seq);
result_temp = [1 1 1 1 1 1 1];
for j=1:1:length(class)
result= dist_statistic( dist,vector,class(j));
result_temp = cat(1,result_temp,result);
end
result_all=cat(1,result_all,result_temp);
%csvwrite('a1.csv',result,(i-1)*28,0);
cd ..;
end
%% 没有进行power转化的结果，cluster=12.
clear;
clc;
cluster_number = 10;
upsampling_rate = 6;
class =[1 21 41 61 101 181 261];
vector = [20 20 20 40 80 80 80];
result_all = [1 1 1 1 1 1 1];
time_eva_all=[1 1 1];
for i=1:1:length(upsampling_rate)
[EMIS_seq,Time_eva] = feature_demo_2_sampling_rate( cluster_number,upsampling_rate(i));
time_eva_all=cat(1,time_eva_all,Time_eva);

cd 'Date_presentation';
dist = dist_EMIS_seq(EMIS_seq);
result_temp = [1 1 1 1 1 1 1];
for j=1:1:length(class)
result= dist_statistic( dist,vector,class(j));
result_temp = cat(1,result_temp,result);
end
result_all=cat(1,result_all,result_temp);
%csvwrite('a1.csv',result,(i-1)*28,0);
cd ..;
end

