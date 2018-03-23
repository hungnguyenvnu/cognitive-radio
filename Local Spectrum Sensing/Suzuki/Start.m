%
CallParameters;
InputParameters;

[Pd_Suzuki_theory] = calPdSuzuki_theory( );
[Pd_Suzuki_sim] = calPdSuzuki_sim( );

Pm_Suzuki_theory = 1 - Pd_Suzuki_theory;
Pm_Suzuki_sim = 1 - Pd_Suzuki_sim;

loglog(Pf, Pm_Suzuki_theory ,'r', Pf, Pm_Suzuki_sim, 'b*-')

grid on
axis([10^-4, 1, 10^-4, 1])

xlabel('Pf')
ylabel('Pm')
legend('Theory', 'Simulation')

