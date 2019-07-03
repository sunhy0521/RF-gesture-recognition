function [TRANS,EMIS,est_STATES,time_HMMT] = HMM_train(seq_M,type,states_M,TRANS_GUESS,EMIS_GUESS)
% Author:hongyu 
% Date:10/18/2016
% revise: 15/11/2016
% Email:hilda.hongyu@gmail.com
% The function: Train the parameters of TRANS and EMIS
% Input:seq_M,states_M,type| IF type=0 train with label ELSE type=1 train
% % without label
% Output:TRANS,EMIS probs
% The structure of sequence
%supervised learning

tic;
[Xsize_seq,Ysize_seq] = size(seq_M);

if(type==0)
    [TRANS_EST, EMIS_EST] = hmmestimate(seq_M,states_M);
    TRANS=TRANS_EST;
    EMIS=EMIS_EST;
else
    % un-supervised learning
    [TRANS_EST, EMIS_EST] = hmmtrain(seq_M,TRANS_GUESS, EMIS_GUESS);
    TRANS=TRANS_EST;
    EMIS=EMIS_EST ;
end 

for i=1:1:Xsize_seq
    est_STATES(i,:) = hmmviterbi(seq_M(i,:),TRANS, EMIS);
end
time_HMMT=toc;
end

