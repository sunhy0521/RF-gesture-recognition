clear all;
load 'aatraining_set_all_15.mat';
%% ��������RSS�������ͻ���power�������Ĳ�ͬ
draw_time_domain(Data_fallForward,'Fall Forward');
draw_time_domain(Data_fallLeft,'Fall Left');
draw_time_domain(Data_fallRight,'Fall right');
draw_time_domain(Data_jump,'Jump');
draw_time_domain(Data_runVertical,'Run Vertically');
draw_time_domain(Data_walkHori,'Walk Horizonly');
draw_time_domain(Data_walkVertical,'Walk Vertically');
%% ������ͬ�����¼����е�����
draw_time_domain_only(Data_fallForward,'Fall Forward');
draw_time_domain_only(Data_fallLeft,'Fall Left');
draw_time_domain_only(Data_fallRight,'Fall right');
draw_time_domain_only(Data_jump,'Jump');
draw_time_domain_only(Data_runVertical,'Run Vertically');
draw_time_domain_only(Data_walkHori,'Walk Horizonly');
draw_time_domain_only(Data_walkVertical,'Walk Vertically');
%% ����Ƶ��ռ������ͼ
draw_frequency_domain(Data_fallForward,'Fall Forward');
draw_frequency_domain(Data_fallLeft,'Fall Left');
draw_frequency_domain(Data_fallRight,'Fall right');
draw_frequency_domain(Data_jump,'Jump');
draw_frequency_domain(Data_runVertical,'Run Vertically');
draw_frequency_domain(Data_walkHori,'Walk Horizonly');
draw_frequency_domain(Data_walkVertical,'Walk Vertically');
%% ����Kmeams���������
draw_center(center);
%% ������ͼ
% 1. ��ͬ����֮������ܶԱ�
cd 'Resluts_figures';
%����cluster_number=10,samplingrate=250���������ͬ����֮������ƶ�ͼ
draw_dist_same_activity();
%����cluster_number=10,samplingrate=250������²�ͬ����֮������ƶ�ͼ
draw_dist_all_activity();
%����cluster_number=10,samplingrate=250������²�ͬ����֮������ƶ�ͼ
draw_time_consumption();
%����ͼ�����ƶ�/ִ��ʱ���cluster_number֮��ı仯����ͼ
draw_same_activity_with_clusters();
%����ͼ�����ƶ�/ִ��ʱ�������������ʵı仯����ͼ
draw_same_activities_with_sampling_rate();
%�������û�в���1����µĶԱ�ͼ%����û�в���2�ĶԱ�ͼ%����û�в���3�ĶԱ�ͼ
draw_compare();
cd ..;
