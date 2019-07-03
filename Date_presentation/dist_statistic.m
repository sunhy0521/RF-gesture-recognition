function [ result] = dist_statistic( dist,vector,class)
%Author:Hongyu 
%Date:1-18-2017
%Function: the comparison of the dist of each activities
[x_dist,y_dist] = size(dist);
length_vector = length(vector);
start =[1 21 41 61 101 181 261];
result(1,1)=mean(dist(class,start(1):vector(1)-1));
result(2,1)=mean(1-dist(class,start(1):vector(1)-1));
result(3,1)=var(dist(class,start(1):vector(1)-1));
result(4,1)=var(1-dist(class,start(1):vector(1)-1));

for i=2:1:length_vector
    result(1,i)=mean(dist(class,start(i):start(i)+vector(i)-1));
    result(2,i)=mean(1-dist(class,start(i):start(i)+vector(i)-1));
    result(3,i)=var(dist(class,start(i):start(i)+vector(i)-1));
    result(4,i)=var(1-dist(class,start(i):start(i)+vector(i)-1));
end

end

