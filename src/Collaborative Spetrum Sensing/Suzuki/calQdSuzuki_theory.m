
function [ Qd_theory ] = calQdSuzuki_theory(k)
%   Detailed explanation goes here

CallParameters;

SNR = [];
for ii = 1 : Np
    temp = exp(sqrt(2)*sigma_z * an(ii) + mu_z);
    SNR = [SNR temp];
end

Pd = [];
for ii = 1 : length(Qf)
    temp = 0;
    for kk = 1 : Np
        t1 = SNR(kk)*m /(1 + SNR(kk)*m);
        t2 = threshold(ii)/2;
        t3 = gammainc(t2, m-1, 'upper');
        t4 = exp(-t2/(1 + m*SNR(kk))) * (1/t1)^(m-1);
        t5 = 1 - gammainc(t2 * t1, m-1, 'upper');

        Pd_Rayleigh = t3 + t4*t5; 
        temp = temp + wn(kk)*Pd_Rayleigh;
    end
    Pd = [Pd temp/sqrt(pi)];
end

Qd = [];
for ii = 1 : length(Qf)
    temp = 0;
    for jj = k : n
        temp = temp + calCombination(jj)*Pd(ii)^jj*(1 - Pd(ii))^(n - jj);
    end
    Qd = [Qd temp];
end

Qd_theory = Qd;


end

