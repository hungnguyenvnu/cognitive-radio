function [ Pd_theory ] = calPdRayleigh_theory( )
%CALPDRAYLEIGH_THEORY Summary of this function goes here
%   Detailed explanation goes here

CallParameters;

temp1 = SNR_avg_Ray*m /(1 + SNR_avg_Ray*m);


Pd = [];

for ii = 1 : length(Pf)
    temp2 = threshold(ii)/2;
    temp3 = gammainc(temp2, m-1, 'upper');
    temp4 = exp(-temp2/(1 + m * SNR_avg_Ray)) * (1/temp1)^(m-1);
    temp5 = 1 - gammainc(temp2 * temp1, m-1, 'upper');
   
    temp = temp3 + temp4*temp5; 
    Pd = [Pd temp];
end

Pd_theory = Pd;

end

