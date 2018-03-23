function [ Qd_sim ] = calQdRayleigh_sim( k )
%SIMULATIONPDSUZUKI Summary of this function goes here
%   Detailed explanation goes here

CallParameters;

for ii = 1 : length(Qf)
    noise = randn(N, 2*m);   % Gaussian noise with mean 0 and variance 1
    y1 = noise;                   % Received signal
    energy = abs(y1).^2;          % Energy of received signal under H0
    
    for jj = 1 : N
        % Test Statistic of the energy detection
        energy_noise(jj) = sum(energy(jj, :));
    end
    
    energy_noise = energy_noise';
    energy_descend = sort(energy_noise,'descend')';
    threshold_sim(ii) = energy_descend(ceil(Qf(ii)*N));
end

% Simulated probability of detection for Rayleigh channel
Pd = [];
for ii = 1:length(Qf)
    s = randi([0 1], N, 2*m);        % Generating 0 and 1 for BPSK
    signal = (2.*s - 1);                  % BPSK modulation

    h1 = (randn(N, 1) + j*randn(N,1)) * inv(sqrt(2)); 
    h = repmat(h1, 1, 2*m);
    % The received signal
    y = sqrt(SNR_avg) * abs(h) .* signal + noise;
   
    energy_signal = abs(y).^2;    % Received energy under H1
    % Test Statistic for the energy detection undet H1
    for jj = 1 : N
        energy_test(jj) = sum(energy_signal(jj, :)); 
    end
    level = (energy_test >= threshold_sim(ii));
    count = sum(level);
    Pd = [Pd count/N];     % The probability of detection
end

Qd = [];
for ii = 1 : length(Qf)
    temp = 0;
    for jj = k : n
        temp = temp + calCombination(jj) * Pd(ii)^jj * (1 - Pd(ii))^(n - jj);
    end
    Qd = [Qd temp];
end

Qd_sim = Qd;

end

