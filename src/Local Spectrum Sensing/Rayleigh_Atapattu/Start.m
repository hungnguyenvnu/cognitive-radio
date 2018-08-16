%% This program calculates Pd in Rayleigh fading followed by Atapattu method
CallParameters;
InputParameters;


PdRayleigh_theory = calPdRayleigh_theory();
PdRayleigh_sim = calPdRayleigh_sim();

PmRayleigh_theory = 1 - PdRayleigh_theory;
PmRayleigh_sim = 1 - PdRayleigh_sim;

% loglog(Pf, PmRayleigh_theory, '-', Pf, PmRayleigh_sim, 'r*')
plot(Pf, PdRayleigh_theory, '-', Pf, PdRayleigh_sim, 'r*')
axis([10^-4 1 10^-4 1])
grid on
