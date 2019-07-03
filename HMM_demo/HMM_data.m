function [seq,states] = HMM_data(data_len,TRANS,EMIS)
% Author:hongyu ,
% Date:18/10/2016
% Function:generate a sequence of HMM sequence
[seq,states] = hmmgenerate(data_len,TRANS,EMIS);
end

