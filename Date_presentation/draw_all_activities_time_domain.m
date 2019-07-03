clear all;
load 'aatraining_set_all_15.mat';
%% 画出基于RSS的特征和基于power的特征的不同
draw_time_domain(Data_fallForward,'Fall Forward');
draw_time_domain(Data_fallLeft,'Fall Left');
draw_time_domain(Data_fallRight,'Fall right');
draw_time_domain(Data_jump,'Jump');
draw_time_domain(Data_runVertical,'Run Vertically');
draw_time_domain(Data_walkHori,'Walk Horizonly');
draw_time_domain(Data_walkVertical,'Walk Vertically');
%% 画出不同动作事件序列的特征
draw_time_domain_only(Data_fallForward,'Fall Forward');
draw_time_domain_only(Data_fallLeft,'Fall Left');
draw_time_domain_only(Data_fallRight,'Fall right');
draw_time_domain_only(Data_jump,'Jump');
draw_time_domain_only(Data_runVertical,'Run Vertically');
draw_time_domain_only(Data_walkHori,'Walk Horizonly');
draw_time_domain_only(Data_walkVertical,'Walk Vertically');
%% 画出频域空间的特征图
draw_frequency_domain(Data_fallForward,'Fall Forward');
draw_frequency_domain(Data_fallLeft,'Fall Left');
draw_frequency_domain(Data_fallRight,'Fall right');
draw_frequency_domain(Data_jump,'Jump');
draw_frequency_domain(Data_runVertical,'Run Vertically');
draw_frequency_domain(Data_walkHori,'Walk Horizonly');
draw_frequency_domain(Data_walkVertical,'Walk Vertically');
%% 画出Kmeams分类的中心
draw_center(center);
%% 画性能图
% 1. 相同动作之间的性能对比
cd 'Resluts_figures';
%画出cluster_number=10,samplingrate=250的情况下相同动作之间的相似度图
draw_dist_same_activity();
%画出cluster_number=10,samplingrate=250的情况下不同动作之间的相似度图
draw_dist_all_activity();
%画出cluster_number=10,samplingrate=250的情况下不同动作之间的相似度图
draw_time_consumption();
%画出图形相似度/执行时间和cluster_number之间的变化趋势图
draw_same_activity_with_clusters();
%画出图形相似度/执行时间随着升采样率的变化趋势图
draw_same_activities_with_sampling_rate();
%画出如果没有步骤1情况下的对比图%画出没有步骤2的对比图%画出没有步骤3的对比图
draw_compare();
cd ..;
