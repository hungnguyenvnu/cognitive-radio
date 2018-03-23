function [ Pd_sim ] = calPdAWGN_theory(  )
%CALPDAWGN_THEORY Summary of this function goes here
%   Detailed explanation goes here
CallParameters;
Pd = [];
for ii = 1 : length(Pf)
    temp = marcumq(sqrt(2*m*SNR), sqrt(threshold(ii)), m);
    Pd =  [Pd temp];
end
Pd_sim = Pd;
end

