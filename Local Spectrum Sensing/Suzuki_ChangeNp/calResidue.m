function [ Res0, Res1 ] = calResidue(lambda)
 %"Energy Detection Based Cooperative Spectrum Sensing in Cognitive Radio Networks"
 % Detail this function goes here
CallParameters;

[Si, Alpha] = calSi_Alpha();

Res0 = [];
for ii = 1 : N
    syms z
    f = exp(lambda*z/2)/((1-z)*(z-inv(1+Si(ii))));
    y = diff(f, m-2);
    Res0 = [Res0 vpa(subs(y,z,0))/factorial(m-2)];
end

Res1 = [];
for ii = 1 : N
    temp = (1+Si(ii))^m * exp(lambda/2/(1+Si(ii)))/Si(ii);
    Res1 = [Res1 temp];
end

end