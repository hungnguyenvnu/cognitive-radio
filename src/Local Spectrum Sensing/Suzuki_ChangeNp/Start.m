%% This program calculates probability of detection
CallParameters;
InputParameters;

for ii = 1 : length(Np)
    if 6 == Np(ii)
       Pd_GH = calPdSuzuki_GH(6, an_wn6);
       Pm_GH = 1 - Pd_GH;
       loglog(Pf, Pm_GH, '*')
       hold on
%     elseif 8 == Np(ii)
%        Pd_GH = calPdSuzuki_GH(8, an_wn8);
%        Pm_GH = 1 - Pd_GH;
%        loglog(Pf, Pm_GH)
%        hold on
%     elseif 10 == Np(ii)s
%        Pd_GH = calPdSuzuki_GH(10, an_wn10);
%        Pm_GH = 1 - Pd_GH;
%        loglog(Pf, Pm_GH)
%        hold on
%     else 12 == Np(ii)
%        Pd_GH = calPdSuzuki_GH(12, an_wn12);
%        Pm_GH = 1 - Pd_GH;
%        loglog(Pf, Pm_GH)
%        hold on
    end
end
% Simulation
% Pd_sim = calPdSuzuki_sim();
% Pm_sim = 1 - Pd_sim;
% Pd_sim = calPdSuzuki_sim();
% % Attapattu
% Pd_Atapattu = calPdSuzuki_AP();
% Pm_Atapattu = 1 - Pd_Atapattu;
% 
% hold on
% loglog(Pf, Pm_sim, 'g*', Pf, Pm_Atapattu, 'r*')
axis([10^-4 1 10^-4 1])
grid on


