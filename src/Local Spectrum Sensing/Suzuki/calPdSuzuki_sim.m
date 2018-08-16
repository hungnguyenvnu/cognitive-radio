function [ Pd_sim ] = calPdSuzuki_sim( )
%SIMULATIONPDSUZUKI Summary of this function goes here
%   Detailed explanation goes here

CallParameters;

for ii = 1 : length(Pf)
    noise = randn(N, 2*m);   % Gaussian noise with mean 0 and variance 1
    y1 = noise;                   % Received signal
    energy = abs(y1).^2;          % Energy of received signal under H0
    
    for jj = 1 : N
        % Test Statistic of the energy detection
        energy_noise(jj) = sum(energy(jj, :));
    end
    
    energy_noise = energy_noise';
    energy_descend = sort(energy_noise,'descend')';
    threshold_sim(ii) = energy_descend(ceil(Pf(ii)*N));
end

% Simulated probability of detection for Suzuki channel
Pd = [];
for ii = 1:length(Pf)
    s = randi([0 1], N, 2*m);        % Generating 0 and 1 for BPSK
    signal = (2.*s - 1);                  % BPSK modulation
    
    % Lognormal
    n1 = sqrt(sigma_z)*randn(N, 1) + mu_z;
    l1 = exp(n1 + eps);
    % Rayleigh
    x1 = sqrt(variance) * randn(N, 1);
    x2 = sqrt(variance) * randn(N, 1);
    r1 = sqrt((x1).^2 + (x2).^2);
    r2 = r1 ./ norm(r1);
    
    % The channel gain
    h1 = l1 .* r2;
    h = repmat(h1, 1, 2*m);

    % The received signal
    y2 = sqrt(SNR_avg) * abs(h) .* signal + noise;
   
    energy_signal = abs(y2).^2;    % Received energy under H1
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

