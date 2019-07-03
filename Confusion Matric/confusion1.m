function [probs_matrix] = confusion1(Like_array,Pred_STATE,num_activity)
% @copyright: Jilin University
% Author:hongyu 
% Date: 11-3-2016
% Function: evaluate the accuracy of the classification
% Parameters:
% Input: Like_array, the likely matrix compute by HMM Model
%        Pred_STATE, the backgroud of the STATES matrix 
%        State_type, the totally state of the samples
% Output: Conf_matrix

[Xsize_Like,Ysize_Like] = size(Like_array);

[Xsize_Pred,Ysize_Pred] = size(Pred_STATE);

State_type =ones(num_activity,Ysize_Like);

% initial the original states of the activities
for i=1:1:num_activity
   State_type(i,:) = i*State_type(i,:);
end 


% If the 
if(Xsize_Like~=Xsize_Pred)
    disp('the matrix is not consitence');
    return;
end

if(Ysize_Like~=Ysize_Pred)
    disp('the matrix is not consitence');
    return; 
end

probs_matrix = zeros(Xsize_Like,num_activity);

for i=1:1:Xsize_Like
    for j=1:1:num_activity
        probs_matrix(i,j) = sum(Like_array(i,:)==State_type(j,:))/Ysize_Pred;
    end
end

end

 