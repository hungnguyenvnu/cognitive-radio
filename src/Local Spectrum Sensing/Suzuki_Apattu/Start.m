%% This program calculates Pd in Atapattu method
CallParameters;
InputParameters;

Pd_Atapattu = calPdSuzuki_AP();
% Pd_GH = calPdSuzuki_GH();
%Pd_sim = calPdSuzuki_sim();

Pm_Atapattu = 1 - Pd_Atapattu;
% Pm_GH = 1 - Pd_GH;
%Pm_sim = 1 - Pd_sim;

% loglog(Pf, Pm_Atapattu, 'r+', Pf, Pm_GH, 'b', Pf, Pm_sim, 'gx')
loglog(Pf, Pm_Atapattu, 'r+')
% loglog(Pf, Pm_GH, 'b')
% legend('Atapattu', 'Gauss-Hermite', 'Simulation')
legend('Theory')
axis([10^-4 1 10^-4 1])
xlabel('P_f')
ylabel('P_m')
grid on

