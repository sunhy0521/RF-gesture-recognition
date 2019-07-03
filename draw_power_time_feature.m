function draw_power_time_feature(RSS_power,training_data)
%Author: Hongyu
%Date:12/30/2016 

[rss_X,rss_Y]=size(training_data);
for i=1:1:rss_X
    for j=2:1:rss_Y
        if(training_data(i,j)>-60)
           training_data(i,j)=-60;
        end
    end
end

figure('position',[100 100 500 120]);
plot(training_data(1,2:1238));
hold on;
% figure('position',[100 100 500 120]);
% plot(RSS_power(1,:));
% 
% figure('position',[100 100 500 120]);
% plot(RSS_power(61,:));
% 
% figure('position',[100 100 500 120]);
% plot(RSS_power(101,:));
% 
% figure('position',[100 100 500 120]);
% plot(RSS_power(181,:));
end

