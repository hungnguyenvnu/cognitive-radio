% Parameters 
global m;
m = 5;

global N;
N = 1e4;

global n;
n = 4;

global SNR_avgdB;
SNR_avgdB = 5;

global SNR_avg;
SNR_avg = 10^(SNR_avgdB/10);
% SNR_avg = 15;

global Qf;
Qf = (0.01 : 0.01 : 1) .^ 2;

global threshold;
threshold = 2 * gammaincinv(1 - Qf, m, 'lower');
