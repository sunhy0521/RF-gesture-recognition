function draw_time_domain_only( training_set,name )
%DRAW_TIME_DOMAIN_ONLY 此处显示有关此函数的摘要
%   此处显示详细说明
 figure('position',[100 100 500 210]);
[t_x,t_y]=size(training_set);
training_set= 10.^((training_set(:,2:t_y)/10));
min_l=min(training_set(1,1:t_y-1));
max_l=max(training_set(1,1:t_y-1));
plot(training_set(1,1:t_y-1),'b-','linewidth',1);
ylim([min_l,max_l]);
xlim([1,t_y-1]);
ylabel('Received Power（mW）','fontsize',12);
xlabel('Time (ms)'); 
title(['"',name,'"',' in time domain'],'fontsize',12);
set(gca,'Fontsize',12);

end

