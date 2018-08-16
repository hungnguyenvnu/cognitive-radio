function [xx, ww]=calAbsandWeightGH(nPoint)
% Calculation of the zeros and weights of Gauss-Hermite quadrature
CallParameters;
format long;
if rem(nPoint, 2) == 0
    % FIRST CASE: n even
    % Calculation of the adjusted n
    nn = (nPoint/2) + 1; 
    b = zeros(nn-1,nn-1);
    % Calculation of the first raw values : b(n, 1)
    % Starting value
    b(1, 1) = -2; 
    for i = 2 : nn-1
        b(i, 1)=((-1)^(i)) * (2 + 4*(i-1)) * abs(b(i-1, 1));
    end
    % Calculation of the last raw values : b(n, n)
    % starting value
    b(1, 2) = 4; 
    for i = 2 : nn-1
        b(i, i+1) = 4 * b(i - 1, i);
    end
    % calculation of intermediate column values
    for j = 2 : nn-1
        valmm = abs(b(j-1, j)/b(j-1, j-1));
        valm = valmm + valmm;
        for i = j : nn-1
            b(i, j)=(-1) * b(i, j-1) * valm;
            valm = valm + valmm;
        end
    end
    % Calculation of the zeros and weights
    kk = 1;
    for i = 1 : nn
        % inversion of the polynomial coe?cients
        poly = b(nn-1, nn - (i-1));
        polyc(kk) = poly;
        polyc(kk+1) = 0;
        kk = kk + 2;
    end
    ssp = size(polyc, 2);
    polycc = polyc(1 : ssp-1) * ((-1)^nPoint);
    % Calculation of the zeros
    xx = roots(polycc); 
    % Coefcients of the ?rst derivative of the polynomial
    for i = 1 : nPoint
        polyd(i) = polycc(i) * (nPoint + 1 - i);
    end
    % calculation of the weights
    for i = 1 : nPoint 
        x = xx(i);
        solde = 0;
        for k = 1 : nPoint
            solde = solde + polyd(k) * (x^(nPoint-k));
        end
        ww(i, 1) = ((2^(nPoint + 1)) * factorial(nPoint)*(pi^(.5)))/(solde^2);
    end
end
