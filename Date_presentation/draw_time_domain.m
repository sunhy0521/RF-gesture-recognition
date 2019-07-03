function  draw_time_domain(training_set,name)
%DRAW_TIME_DOMAIN Summary of this function goes here
%   Detailed explanation goes here
figure('position',[200 200 400 350]);
subplot(2,1,1);
%figure('position',[100 100 500 200]);
[t_x,t_y]=size(training_set);
% training_set= 10.^((training_set(:,2:t_y)/10));
min_l=min(training_set(1,2:t_y-1));
max_l=max(training_set(1,2:t_y-1));
plot(training_set(1,2:t_y-1),'b-','linewidth',2);
ylim([min_l,max_l]);
xlim([1,t_y-1]);
ylabel('RSS£¨dBm£©','fontsize',12);
xlabel('Time (ms)'); 
title(['"',name,'"',' in Coarse-grained RSS'],'fontsize',12);
set(gca,'Fontsize',12);

subplot(2,1,2);
% figure('position',[100 100 500 200]);
[t_x,t_y]=size(training_set);
training_set= 10.^((training_set(:,2:t_y)/10));
min_l=min(training_set(1,1:t_y-1));
max_l=max(training_set(1,1:t_y-1));
plot(training_set(1,1:t_y-1),'b-','linewidth',2);
ylim([min_l,max_l]);
xlim([1,t_y-1]);
ylabel('Received Power£¨mW£©','fontsize',12);
xlabel('Time (ms)'); 
title(['"',name,'"',' in Fine-grained power'],'fontsize',12);
set(gca,'Fontsize',12);
end

