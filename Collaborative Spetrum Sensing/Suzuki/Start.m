%
CallParameters;
InputParameters;

for ii = 1 : 2 : n
    Qm_Suzuki_theory = 1 - calQdSuzuki_theory(ii );
    Qm_Suzuki_sim = 1 - calQdSuzuki_sim( ii);
    loglog(Qf, Qm_Suzuki_theory ,'r', Qf, Qm_Suzuki_sim, 'b*-')
    hold on
end

grid on
axis([10^-4, 1, 10^-4, 1])

xlabel('Qf')
ylabel('Qm')
legend('Theory', 'Simulation')

