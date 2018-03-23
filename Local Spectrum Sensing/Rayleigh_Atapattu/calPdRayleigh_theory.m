function [Pd_theory] = calPdRayleigh_theory()
% The fuctions return
% Detail this function goes here
CallParameters;

Pd = [];
[Res0, Res1] = calResidue( );

for ii = 1 : length(Pf)
    if m == 1
        temp1 = -threshold(ii)/2/(1 + SNR_avg);
        Pd = [Pd exp(temp1)];
    else if m == 5
        temp2 = exp(-threshold(ii)/2) * (Res0(ii) + Res1(ii));
        Pd = [Pd temp2];
    end
end

Pd_theory = Pd;

end