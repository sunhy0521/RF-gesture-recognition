function [fig_cluster] = draw_clusters(center)
% Author: Hongyu 
% Date: 12-28-2016
% Draw the cluster centers of the feature
[cluster_len_x,cluster_len_y] = size(center); 
for i=1:1:luster_len_x
fig_cluster= plot(center(i,:),'.-','fontsize',20);
hold on;
end 
end

