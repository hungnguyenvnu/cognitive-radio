function [ si, alpha ] = calSi_Alpha( )
%CALSI Summary of this function goes here
%   Detailed explanation goes here
CallParameters;
si = [];
alpha = [];
for ii = 1 : N
    temp = exp(-(sqrt(2) * var_log * ti(ii) + mean_log));
    alpha = [alpha wi(ii)*temp/(sqrt(pi)*sum(wi))];
    si = [si temp/SNR_unfaded];
end

end
