clear;
clc;

load 'EMIS_seq.mat';
vector = [20 20 20 40 80 80 80];
class =[1 21 41 61 101 181 261];

dist = dist_EMIS_seq(EMIS_seq);

for i=1:1:length(class)
result= dist_statistic(dist,vector,class(i));
a(:,:,i)=result;
end
