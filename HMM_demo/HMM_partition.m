function [Train_EMIS,Train_label,Pred_EMIS,Pred_label] = HMM_partition(EMIS_seq,Label_seq,percent,len_act)
%Author:hongyu 
%Date:10/26/2016
%HMM_PARTITION: the function used to partition the data into two sets:
%traning sets and predicting sets
%Parameters:  
%Input: EMIS_seq, the total set of the EMIS sequence
      % STATE_seq, the total set of the STATE sequence
      % percent, the percent you want to add 
      % length of the sample for one activities
%Output: Train_EMIS: the matrix used to train the HMM model
      %  Train_STATE: the state used to train the HMM Model
      %  Pred_EMIS: the EMIS used to predict the accuracy of the HMM Model
      %  Pred_STATE: the state used to predict the accuracy of the HMM
      %  Model

      
[xsize,ysize] = size(EMIS_seq);
num_activity = length(len_act);

for i=1:1:num_activity
tsize(i) = len_act(i)*percent;
end

Train_EMIS = EMIS_seq(1:tsize(1),:);
Train_label = Label_seq(1:tsize(1),:);
Pred_EMIS = EMIS_seq(tsize(1)+1:len_act,:);
Pred_label = Label_seq(tsize(1)+1:len_act,:);


for i=2:1:num_activity
     base = sum(len_act(1:i-1))+1;
     offset = tsize(i);
     base_pre=sum(len_act(1:i-1))+tsize(i)+1;
     end_pre = sum(len_act(1:i));
     Train_EMIS = cat(1,Train_EMIS,EMIS_seq(base:base+offset-1,:));
     Train_label = cat(1,Train_label,Label_seq(base:base+offset-1,:));
     Pred_EMIS = cat(1,Pred_EMIS,EMIS_seq(base_pre:end_pre,:));
     Pred_label = cat(1,Pred_label,Label_seq(base_pre:end_pre,:));
end
end

