function fig=draw_frequency_domain(training_set,name)
%DRAW_FREQUENCY_DOMAIN Summary of this function goes here
%   Detailed explanation goes here
load 'fre_color.mat';
fig=figure;
[t_x,t_y]=size(training_set);
training_set= 10.^((training_set(:,2:t_y)/10));
spectrogram(((training_set(12,1:t_y-1))),128,120,1:200,3000,'yaxis');
title(['"',name,'"',' in frequency domain'],'fontsize',16,'fontweight','bold');
set(gca,'Fontsize',16,'fontweight','bold');
ax1=gca;
colormap(ax1,mycmap);

end

