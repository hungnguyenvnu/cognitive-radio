function [Pd_ap] = calPdSuzuki_AP()
% The fuctions return
% Detail this function goes here
CallParameters;

[Si, Alpha] = calSi_Alpha();

Pd_ap = [];
for ii = 1 : length(Pf)
    if m == 1
        temp1 = 0;
        for jj = 1 : N
            temp1 = temp1 + (Alpha(jj)/Si(jj)) * exp(-threshold(ii)*Si(jj)/2/(1+Si(jj)));
        end
        Pd = temp1;
    else
        [Res0, Res1] = calResidue(threshold(ii));
        temp2 = 0;
        for jj = 1 : N
            temp2 = temp2 + Alpha(jj)/(1 + Si(jj))*(Res0(jj) + Res1(jj));
        end
        Pd = temp2 * exp(-threshold(ii)/2);
    end
    Pd_ap = [Pd_ap Pd];
end

end