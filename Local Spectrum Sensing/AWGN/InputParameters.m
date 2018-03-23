global m;
m = 5;

global N;
N = 10e4;

global SNR_dB;
SNR_dB = 5;

global SNR;
SNR= 10^(SNR_dB/10);

global Pf;
Pf  = (0.01 : 0.01 : 1) .^ 2;

global threshold;
threshold = 2 * gammaincinv(1 - Pf, m, 'lower');
