
function [ Qd_theory ] = calQdRayleigh_theory( k )
% k out of n rule
%   Detailed explanation goes here

CallParameters;

temp1 = SNR_avg*m /(1 + SNR_avg*m);
Pd = [];
for ii = 1 : length(Qf)
    temp2 = threshold(ii)/2;
    temp3 = gammainc(temp2, m-1, 'upper');
    temp4 = exp(-temp2/(1 + m*SNR_avg)) * (1/temp1)^(m-1);
    temp5 = 1 - gammainc(temp2 * temp1, m-1, 'upper');
   
    temp = temp3 + temp4*temp5; 
    Pd = [Pd temp];
end


Qd = [];
for ii = 1 : length(Qf)
    temp = 0;
    for jj = k : n
        temp = temp + calCombination(jj) * Pd(ii)^jj * (1 - Pd(ii))^(n - jj);
    end
    Qd = [Qd temp];
end

Qd_theory = Qd;

end

