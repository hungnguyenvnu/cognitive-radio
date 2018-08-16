%
CallParameters;
InputParameters;

for kk = 1 : 4
    QmRayleigh_theory = 1 - calQdRayleigh_theory(kk);
    QmRayleigh_sim = 1 - calQdRayleigh_sim(kk);
    loglog(Qf, QmRayleigh_theory, 'b', Qf, QmRayleigh_sim, 'r*')
    hold on
end

% hold on
% QmRayleigh_theory = 1 - calQdSuzuki_theory(10);
% loglog(Qf, QmRayleigh_theory, 'b')

grid on
axis([10^-4, 1, 10^-4, 1])

xlabel('Qf')
ylabel('Qm')

