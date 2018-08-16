% This program simulates ROC under non fading channel (AWGN channel)

CallParameters;
InputParameters;

Pm_AWGN_theory = 1 - calPdAWGN_theory();
Pm_AWGN_sim = 1 - calPdAWGN_sim();

% Complementary ROC Curve
loglog(Pf, Pm_AWGN_theory,'r', Pf, Pm_AWGN_sim,'b*')  

grid on
axis([10^-4 1 10^-4 1])


legend('Theory', 'Simulation')
xlabel('Probability of False Alarm')
ylabel('Probability of missed detection')
title('ROC under AWGN channel')

