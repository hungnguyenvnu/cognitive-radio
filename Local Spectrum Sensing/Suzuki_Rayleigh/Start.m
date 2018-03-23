%% This program calculates Pd in Atapattu method
CallParameters;
InputParameters;

% Pd Suzuki Gauss-Hermite
Pd_GH = calPdSuzuki_GH();
Pd_sim = calPdSuzuki_sim();

Pm_GH = 1 - Pd_GH;
Pm_sim = 1 - Pd_sim;

Pd_Ray = calPdRayleigh_theory();
Pd_Ray_sim = calPdRayleigh_sim();

Pm_Ray = 1 - Pd_Ray;
Pm_Ray_sim = 1 - Pd_Ray_sim;

loglog(Pf, Pm_GH, 'b', Pf, Pm_sim, 'b+', Pf, Pm_Ray, 'r', Pf, Pm_Ray_sim, 'r*')
legend('Suzuki Theory', 'Suzuki Simulation', 'Rayleigh Theory', 'Rayleigh Simulation')
% legend('Theory', 'Simulation')
axis([10^-4 1 10^-4 1])
xlabel('P_f')
ylabel('P_m')
grid on

