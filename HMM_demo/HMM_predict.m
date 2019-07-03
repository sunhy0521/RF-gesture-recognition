function [likelystates,probs,Pre_label,conf_matrix] = HMM_predict(TRANS,EMIS,Pred_EMIS,est_STATE,Train_label,Pred_label_data)
% Author:hongyu
% Date:10/18/2016
% Email:hilda.hongyu@gmail.com
% The function: Predict the probs of given sequence
% Parameters: TRANS:the transition probs between status 
%             EMIS: the probs between status and outputs
%             seq: the sequence to be predict
%             states: labels of each sequence

[Xsize_pred,Ysize_pred] = size(Pred_EMIS);
[Xsize_tr,Ysize_tr] = size(est_STATE);

likelystates = zeros(Xsize_pred,Ysize_pred);
probs = zeros(Xsize_pred,Xsize_tr);
max_num = zeros(Xsize_pred,1);
index = zeros(Xsize_pred,1);
Pre_label = zeros(Xsize_pred,1);

for i=1:1:Xsize_pred
likelystates(i,:) = hmmviterbi(Pred_EMIS(i,:),TRANS,EMIS);
end


for i=1:1:Xsize_pred
    for j=1:1:Xsize_tr
    probs(i,j) = sum(likelystates(i,:)==est_STATE(j,:))/Ysize_pred;    
    end
end

for i=1:1:Xsize_pred
    [max_num(i,1),index(i,1)] =max(probs(i,:));
    Pre_label(i,1) = Train_label(index(i,1));    
end

Pre_label = int32(Pre_label);
Pred_label_data = int32(Pred_label_data);

[conf_matrix,order] =  confusionmat(Pred_label_data,Pre_label);

end

