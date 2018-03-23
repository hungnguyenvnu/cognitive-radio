function [ Pd_sim ] = calPdAWGN_sim(  )
%CALPDAWGN_SIM Summary of this function goes here
%   Detailed explanation goes here
CallParameters;

for ii = 1 : length(Pf)
    noise = randn(N, 2*m);      % Gaussian noise with mean 0 and variance 1
    y1 = noise;                   % Received signal
    energy = abs(y1).^2;          % Energy of received signal under H0
    
    for jj = 1 : N
        % Test Statistic of the energy detection
        energy_noise(jj) = sum(energy(jj, :));
    end
    
    energy_noise = energy_noise';
    energy_descend = sort(energy_noise,'descend')';
    threshold_sim(ii) = energy_descend(ceil(Pf(ii) * N));
end

% Simulated probability of detection in AWGN channel
Pd = [];
for ii = 1:length(Pf)
    s = randi([0 1], N, 2 * m);        % Generating 0 and 1 for BPSK
    signal = (2.*s - 1);                  % BPSK modulation
    % The channel gain
    h = 1;
    % The received signal
    y2 = sqrt(SNR) * h * signal + noise;
    % Received energy under H1
    energy_signal = abs(y2).^2;    
    % Test Statistic for the energy detection undet H1
    for jj = 1 : N
        energy_test(jj) = sum(energy_signal(jj, :)); 
    end
    level = (energy_test >= threshold_sim(ii));
    count = sum(level);
    Pd = [Pd count/N];     % The probability of detection
end

Pd_sim = Pd;
end

