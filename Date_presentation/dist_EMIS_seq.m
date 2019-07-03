function [ dist ] = dist_EMIS_seq(EMIS_seq)
%Author:Hongyu
%Date: 1/18/2017
%Function: calculate the dist between each kmeans vectors.

Distance = pdist(EMIS_seq,'hamming');
dist = squareform(Distance);

end

