function Kmeans_feature=draw_kmeans_feature(center,EMIS_seq,line,ans1,ans2)
%DRAW_KMEANS_FEATURE 画出用kmeams分类之后的feature
[x_center,y_center]=size(center);
[x_EMIS,y_EMIS]=size(EMIS_seq);
Kmeans_feature = zeros(y_EMIS,y_center);
for i=1:1:y_EMIS
    switch EMIS_seq(line,i)
     case 1
      Kmeans_feature(i,:)=center(1,:);
     case 2
      Kmeans_feature(i,:)=center(2,:);
    case 3
      Kmeans_feature(i,:)=center(3,:);
    case 4
      Kmeans_feature(i,:)=center(4,:);
    case 5
      Kmeans_feature(i,:)=center(5,:);
    case 6
      Kmeans_feature(i,:)=center(6,:);
    case 7
      Kmeans_feature(i,:)=center(7,:);
    case 8
      Kmeans_feature(i,:)=center(8,:);
     end
end
 % Kmeans_feature=Kmeans_feature';
 imagesc(ans1,ans2,flip(10*log10(abs(Kmeans_feature)+eps)'))
 ylim([0 200]);
 set(gca,'ytick',[200 160 140 120 100 80 60 0]);

end


