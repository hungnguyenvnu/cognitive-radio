%%
global m;
m = 5;

global N;
N = 10e4;

global Pf;
Pf = (0.01 : 0.01 : 1) .^ 2;

global threshold;
threshold = 2 * gammaincinv(1 - Pf, m, 'lower');

global SNR_avgdB;
SNR_avgdB = 0;

global SNR_avg;
SNR_avg = power(10, SNR_avgdB/10);

