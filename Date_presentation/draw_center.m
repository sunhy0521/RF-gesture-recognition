function draw_center( center )
%DRAW_CENTER 此处显示有关此函数的摘要
%   此处显示详细说明
figure('position',[100 100 500 300]);
[x_center,y_center] = size(center);
plot(center(1,:),'k','linewidth',1);  hold on;
plot(center(2,:),'y','linewidth',1);  hold on;
plot(center(3,:),'m','linewidth',1);  hold on;
plot(center(4,:),'g','linewidth',1);  hold on;
plot(center(5,:),'c','linewidth',1);  hold on;
plot(center(6,:),'r','linewidth',1);  hold on;
plot(center(7,:),'color',[0.8 0.2 0.1],'linewidth',1);  hold on;
plot(center(8,:),'b','linewidth',1);  hold on;
title('The collections of 8 clusters','fontsize',12)
set(gca,'fontsize',12);
%set(gca,'Yscale','log');
legend('Cluster 1','Cluster 2','Cluster 3','Cluster 4','Cluster 5','Cluster 6','Cluster 7','Cluster 8')
xlabel('Frequency','fontsize',16,'fontweight','bold');
ylabel('Power(mV)','fontsize',16,'fontweight','bold');
figure('position',[100 100 700 750]);
subplot(5,2,[1 2]);

[x_center,y_center] = size(center);
plot(center(1,:),'k','linewidth',1);  hold on;
plot(center(2,:),'y','linewidth',1);  hold on;
plot(center(3,:),'m','linewidth',1);  hold on;
plot(center(4,:),'g','linewidth',1);  hold on;
plot(center(5,:),'c','linewidth',1);  hold on;
plot(center(6,:),'r','linewidth',1);  hold on;
plot(center(7,:),'color',[0.8 0.2 0.1],'linewidth',1);  hold on;
plot(center(8,:),'b','linewidth',1);  hold on;
title('The collections of 8 clusters')
set(gca,'fontsize',8);
%set(gca,'Yscale','log');
legend('Cluster 1','Cluster 2','Cluster 3','Cluster 4','Cluster 5','Cluster 6','Cluster 7','Cluster 8')
xlabel('Frequency');
ylabel('Power(mV)');

subplot(5,2,3);
plot(center(1,:),'k','linewidth',0.25);  
title('Cluster 1')
set(gca,'fontsize',8);
set(gca,'Yscale','log');
xlabel('Frequency');
ylabel('Power(mV)');

subplot(5,2,4);
plot(center(2,:),'y','linewidth',1);
title('Cluster 2')
set(gca,'fontsize',8);
set(gca,'Yscale','log');
xlabel('Frequency');
ylabel('Power(mV)');

subplot(5,2,5);
plot(center(3,:),'m','linewidth',1);
title('Cluster 3')
set(gca,'fontsize',8);
xlabel('Frequency');
ylabel('Power(mV)');
set(gca,'Yscale','log');

subplot(5,2,6);
plot(center(4,:),'g','linewidth',1);
title('Cluster 4')
set(gca,'fontsize',8);
set(gca,'Yscale','log');
xlabel('Frequency');
ylabel('Power(mV)');

subplot(5,2,7);
plot(center(5,:),'c','linewidth',1);
title('Cluster 5')
set(gca,'fontsize',8);
set(gca,'Yscale','log');
xlabel('Frequency');
ylabel('Power(mV)');

subplot(5,2,8);
plot(center(6,:),'r','linewidth',1);
title('Cluster 6')
set(gca,'fontsize',8);
set(gca,'Yscale','log');
xlabel('Frequency');
ylabel('Power(mV)');

subplot(5,2,9);
plot(center(7,:),'color',[0.8 0.2 0.1],'linewidth',1);
title('Cluster 7')
set(gca,'fontsize',8);
set(gca,'Yscale','log');
xlabel('Frequency');
ylabel('Power(mV)');

subplot(5,2,10);
plot(center(8,:),'b','linewidth',1);
title('Cluster 8')
set(gca,'fontsize',8);
set(gca,'Yscale','log');
xlabel('Frequency');
ylabel('Power(mV)');
end

