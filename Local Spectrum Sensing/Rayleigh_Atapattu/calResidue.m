function [ Res0, Res1 ] = calResidue( )
 %"Energy Detection Based Cooperative Spectrum Sensing in Cognitive Radio Networks"
 % Detail this function goes here
CallParameters;

temp = SNR_avg/(1 + SNR_avg);

Res0 = [];
for ii = 1 : length(Pf)
    syms z
    f = exp(threshold(ii)*z/2)/((1 - z)*(z - temp));
    y = diff(f, m-2);
    Res0 = [Res0 vpa(subs(y,z,0))/(factorial(m-2)*(1 + SNR_avg))];
end

Res1 = [];
for ii = 1 : length(Pf)
    temp1 = exp(threshold(ii)/2 * temp);
    temp2 = (1/temp) ^ (m - 1);
    Res1 = [Res1 (temp1*temp2)];
end

end