function [ Pd_theory ] = calPdSuzuki_GH(nPoint, an_wn)
%   Detailed explanation goes here
CallParameters;
% Calculate SNR
SNR = [];
for ii = 1 : nPoint
    temp = exp(sqrt(2) * var_gauss * an_wn(1, ii) + mean_gauss);
    SNR = [SNR temp];
end

% Calculate Probability of detection
Pd = [];
for ii = 1 : length(Pf)
    temp = 0;
    for kk = 1 : nPoint
        t1 = SNR(kk)*m /(1 + SNR(kk)*m);
        t2 = threshold(ii)/2;
        t3 = gammainc(t2, m-1, 'upper');
        t4 = exp(-t2/(1 + m*SNR(kk))) * (1/t1)^(m-1);
        t5 = 1 - gammainc(t2 * t1, m-1, 'upper');
        Pd_Rayleigh = t3 + t4*t5; 
        temp = temp + an_wn(2, kk)*Pd_Rayleigh;
    end
    Pd = [Pd temp/sqrt(pi)];
end

Pd_theory = Pd;

end

