function [ Pd_sim ] = calPdRayleigh_sim( )
%CALPDRAYLEIGH_SIM Summary of this function goes here
%   Detailed explanation goes here

CallParameters;

% Calculating threshold
for ii = 1 : length(Pf)        
    noise = randn(N, 2 * m);      % Gaussian noise with mean 0 and variance 1
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

%% Simulation
Pd = [];
for ii = 1:length(Pf)
    
    s = randi([0 1], N, 2*m);        % Generating 0 and 1 for BPSK
    signal = (2.*s - 1);                  % BPSK modulation
    %  Rayleigh channel coefficient
    h1 = (randn(N, 1) + j*randn(N,1)) * inv(sqrt(2)); 
    h = repmat(h1, 1, 2*m); 
    % The received signal, abs(h): the channal gain
    y2 = sqrt(SNR_avg_Ray) .* abs(h) .* signal + noise;  
    energy = abs(y2).^2;    % Received energy under H1
    
    for jj = 1 : N
        % Test Statistic for the energy detection undet H1
        energy_signal(jj) = sum(energy(jj, :)); 
    end
    level = (energy_signal >= threshold_sim(ii));
    count = sum(level);
    Pd = [Pd count/N];     % The probability of detection 
end

Pd_sim = Pd;

end

